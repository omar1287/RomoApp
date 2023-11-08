import 'package:dio/dio.dart';

abstract class Failure {
  final String messageError;

  const Failure(this.messageError);
}

class ServerExpFailure extends Failure {
  ServerExpFailure(super.messageError);

  factory ServerExpFailure.dioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerExpFailure('Send timeout with apiServer');
      case DioExceptionType.badResponse:
        return ServerExpFailure.badResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.unknown:
        return ServerExpFailure('opps ,there was a Error ,please try again');

      default:
        return ServerExpFailure('opps ,there was a Error ,please try again');
    }
  }


  factory ServerExpFailure.badResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerExpFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerExpFailure('Error in request');
    } else if (statusCode == 500) {
      return ServerExpFailure('Error in internet connection');
    } else {
      return ServerExpFailure('oops , there was a Error ,please try again');
    }
  }
}
