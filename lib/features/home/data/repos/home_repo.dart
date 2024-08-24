import 'dart:developer';

import 'package:marvel_app/core/networking/api_error_handler.dart';
import 'package:marvel_app/core/networking/api_result.dart';
import 'package:marvel_app/features/home/data/apis/home_api_service.dart';
import 'package:marvel_app/features/home/data/models/marvel_models.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<MarvelResponse>> getAllCharacters({
    required String apiKey,
    required String hash,
    required String timestamp,
    int limit = 10,
  }) async {
    try {
      final response = await _homeApiService.getAllCharacters(
        apiKey: apiKey,
        hash: hash,
        timestamp: timestamp,
        limit: limit,
      );
      return ApiResult.success(response);
    } catch (error) {
      log(error.toString());
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
