import 'package:dio/dio.dart';
import 'package:marvel_app/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
import '../models/marvel_models.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET('/characters')
  Future<MarvelResponse> getAllCharacters({
    @Query('apikey') required String apiKey,
    @Query('hash') required String hash,
    @Query('ts') required String timestamp,
    @Query('limit') int limit = 10,
  });
}
