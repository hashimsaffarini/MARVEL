import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/core/networking/api_constants.dart';
import 'package:marvel_app/features/home/data/models/marvel_models.dart';
import 'package:marvel_app/features/home/data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<Results?>? charactersList = [];

  void getAllCharacters() async {
    emit(const HomeState.charactersLoading());

    final response = await _homeRepo.getAllCharacters(
      apiKey: ApiConstants.publicKey,
      hash: ApiConstants.hash,
      timestamp: ApiConstants.timestamp.toString(),
      limit: 10,
    );

    response.when(
      success: (marvelResponse) {
        charactersList = marvelResponse.data?.results ?? [];
        emit(HomeState.charactersSuccess(charactersList));
      },
      failure: (errorHandler) {
        log(errorHandler.apiErrorModel.toString());
        emit(HomeState.charactersError(errorHandler));
      },
    );
  }
}
