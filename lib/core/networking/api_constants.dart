import 'package:marvel_app/core/helpers/converter.dart';

class ApiConstants {
  static const String apiBaseUrl = 'https://gateway.marvel.com/v1/public/';
  static const String publicKey = 'becb5f2b050e3df08982f1b3c9320000';
  static const String privateKey = 'cd1c5f12aa625d1df8eebf3bc3a3f110ca37c577';
  static int timestamp = DateTime.now().millisecondsSinceEpoch;
  static String hash = generateMd5('$timestamp$privateKey$publicKey');
  static String generateUrl(String endpoint) =>
      '$apiBaseUrl$endpoint?ts=$timestamp&apikey=$publicKey&hash=$hash';

  static const String chacheMarvel = 'chacheMarvel';
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
