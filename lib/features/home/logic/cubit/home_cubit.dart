import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:marvel_app/core/networking/api_constants.dart';
import 'package:marvel_app/features/home/data/models/cache_model.dart';
import 'package:marvel_app/features/home/data/models/marvel_models.dart';
import 'package:marvel_app/features/home/data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  final ScrollController scrollController = ScrollController();
  List<Results?> charactersList = [];
  bool isLoadingMore = false;
  final Box<CachedResult> cacheBox = Hive.box(ApiConstants.chacheMarvel);

  void getAllCharacters() async {
    emit(const HomeState.charactersLoading());

    if (cacheBox.isNotEmpty) {
      charactersList = cacheBox.values.map((e) => e.toResults()).toList();
      emit(HomeState.charactersSuccess(charactersList));
    } else {
      final response = await _homeRepo.getAllCharacters(
        apiKey: ApiConstants.publicKey,
        hash: ApiConstants.hash,
        timestamp: ApiConstants.timestamp.toString(),
        limit: 10,
        offset: 0,
      );

      response.when(
        success: (marvelResponse) {
          charactersList = marvelResponse.data?.results ?? [];

          cacheBox.clear();
          for (var result in charactersList) {
            cacheBox.add(CachedResult.fromResults(result!));
          }

          emit(HomeState.charactersSuccess(charactersList));
        },
        failure: (errorHandler) {
          log(errorHandler.apiErrorModel.toString());
          emit(HomeState.charactersError(errorHandler));
        },
      );
    }
  }

  void loadMoreCharacters() async {
    if (isLoadingMore) return;

    isLoadingMore = true;
    emit(const HomeState.paginationLoading());

    final response = await _homeRepo.getAllCharacters(
      apiKey: ApiConstants.publicKey,
      hash: ApiConstants.hash,
      timestamp: ApiConstants.timestamp.toString(),
      limit: 10,
      offset: charactersList.length,
    );

    response.when(
      success: (marvelResponse) {
        var newCharacters = marvelResponse.data?.results ?? [];
        charactersList.addAll(newCharacters);

        for (var result in newCharacters) {
          cacheBox.add(CachedResult.fromResults(result));
        }

        emit(HomeState.paginationSuccess(charactersList));
      },
      failure: (errorHandler) {
        log(errorHandler.apiErrorModel.toString());
        emit(HomeState.charactersError(errorHandler));
      },
    );

    isLoadingMore = false;
  }
}
