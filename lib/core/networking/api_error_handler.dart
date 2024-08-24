import 'package:dio/dio.dart';
import 'package:marvel_app/core/networking/api_constants.dart';
import 'package:marvel_app/core/networking/api_error_model.dart';

enum DataSource {
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORIZED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

class ResponseCode {
  static const int SUCCESS = 200;
  static const int NO_CONTENT = 201;
  static const int BAD_REQUEST = 400;
  static const int UNAUTHORIZED = 401;
  static const int FORBIDDEN = 403;
  static const int NOT_FOUND = 404;
  static const int INTERNAL_SERVER_ERROR = 500;
  static const int API_LOGIC_ERROR = 422;

  // Local status codes
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECEIVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  static const String NO_CONTENT = ApiErrors.noContent;
  static const String BAD_REQUEST = ApiErrors.badRequestError;
  static const String UNAUTHORIZED = ApiErrors.unauthorizedError;
  static const String FORBIDDEN = ApiErrors.forbiddenError;
  static const String INTERNAL_SERVER_ERROR = ApiErrors.internalServerError;
  static const String NOT_FOUND = ApiErrors.notFoundError;

  // Local status messages
  static const String CONNECT_TIMEOUT = ApiErrors.timeoutError;
  static const String CANCEL = ApiErrors.defaultError;
  static const String RECEIVE_TIMEOUT = ApiErrors.timeoutError;
  static const String SEND_TIMEOUT = ApiErrors.timeoutError;
  static const String CACHE_ERROR = ApiErrors.cacheError;
  static const String NO_INTERNET_CONNECTION = ApiErrors.noInternetError;
  static const String DEFAULT = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.NO_CONTENT:
        return ApiErrorModel(
            code: ResponseCode.NO_CONTENT, status: ResponseMessage.NO_CONTENT);
      case DataSource.BAD_REQUEST:
        return ApiErrorModel(
            code: ResponseCode.BAD_REQUEST,
            status: ResponseMessage.BAD_REQUEST);
      case DataSource.FORBIDDEN:
        return ApiErrorModel(
            code: ResponseCode.FORBIDDEN, status: ResponseMessage.FORBIDDEN);
      case DataSource.UNAUTHORIZED:
        return ApiErrorModel(
            code: ResponseCode.UNAUTHORIZED,
            status: ResponseMessage.UNAUTHORIZED);
      case DataSource.NOT_FOUND:
        return ApiErrorModel(
            code: ResponseCode.NOT_FOUND, status: ResponseMessage.NOT_FOUND);
      case DataSource.INTERNAL_SERVER_ERROR:
        return ApiErrorModel(
            code: ResponseCode.INTERNAL_SERVER_ERROR,
            status: ResponseMessage.INTERNAL_SERVER_ERROR);
      case DataSource.CONNECT_TIMEOUT:
        return ApiErrorModel(
            code: ResponseCode.CONNECT_TIMEOUT,
            status: ResponseMessage.CONNECT_TIMEOUT);
      case DataSource.CANCEL:
        return ApiErrorModel(
            code: ResponseCode.CANCEL, status: ResponseMessage.CANCEL);
      case DataSource.RECEIVE_TIMEOUT:
        return ApiErrorModel(
            code: ResponseCode.RECEIVE_TIMEOUT,
            status: ResponseMessage.RECEIVE_TIMEOUT);
      case DataSource.SEND_TIMEOUT:
        return ApiErrorModel(
            code: ResponseCode.SEND_TIMEOUT,
            status: ResponseMessage.SEND_TIMEOUT);
      case DataSource.CACHE_ERROR:
        return ApiErrorModel(
            code: ResponseCode.CACHE_ERROR,
            status: ResponseMessage.CACHE_ERROR);
      case DataSource.NO_INTERNET_CONNECTION:
        return ApiErrorModel(
            code: ResponseCode.NO_INTERNET_CONNECTION,
            status: ResponseMessage.NO_INTERNET_CONNECTION);
      case DataSource.DEFAULT:
        return ApiErrorModel(
            code: ResponseCode.DEFAULT, status: ResponseMessage.DEFAULT);
      default:
        return ApiErrorModel(
            code: ResponseCode.DEFAULT, status: ResponseMessage.DEFAULT);
    }
  }
}

// Error handler class to handle Dio errors
class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // Dio error, possibly from API response or Dio itself
      apiErrorModel = _handleError(error);
    } else {
      // Default error
      apiErrorModel = DataSource.DEFAULT.getFailure();
    }
  }
}

// Function to handle Dio errors and map them to ApiErrorModel
ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.RECEIVE_TIMEOUT.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null && error.response?.statusCode != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.CANCEL.getFailure();
    case DioExceptionType.connectionError:
    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
    default:
      return DataSource.DEFAULT.getFailure();
  }
}

// Status constants for internal API handling
class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}
