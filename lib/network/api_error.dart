import 'package:dio/dio.dart';

class ApiError implements Exception {
  late String message;
  ApiError({
    required this.message,
  });

  ApiError.fromDioError(dynamic dioError) {
    if (dioError is DioException) {
      switch (dioError.type) {
        case DioExceptionType.cancel:
          message = "Request to API server was cancelled";
          break;
        case DioExceptionType.connectionTimeout:
          message = "Connection timeout with API server";
          break;
        case DioExceptionType.receiveTimeout:
          message = "Receive timeout in connection with API server";
          break;
        case DioExceptionType.unknown:
          message = _handleError(
            dioError.response?.statusCode,
            dioError.response?.data,
          );
          break;
        case DioExceptionType.sendTimeout:
          message = "Send timeout in connection with API server";
          break;
        case DioExceptionType.badResponse:
          message = _handleError(
            dioError.response?.statusCode,
            dioError.response?.data,
          );
          break;
        default:
          message = "Something went wrong";
          break;
      }
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return error.toString();
      case 401:
        return 'Unauthorized';
      case 403:
        return error['detail'];
      case 404:
        return error['message'];
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
