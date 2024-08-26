import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/core/networking/api_error_handler.dart';
import 'package:marvel_app/features/home/data/models/marvel_models.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.charactersLoading() = CharactersLoading;

  const factory HomeState.charactersSuccess(List<Results?>? charactersList) = CharactersSuccess;

  const factory HomeState.charactersError(ErrorHandler errorHandler) = CharactersError;

  const factory HomeState.paginationLoading() = PaginationLoading;

  const factory HomeState.paginationSuccess(List<Results?>? charactersList) = PaginationSuccess;

}
