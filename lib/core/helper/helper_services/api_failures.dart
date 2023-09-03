import 'package:dio/dio.dart';

abstract class ApiFailures {
  final String errorMessage;

  ApiFailures(this.errorMessage);
}

class ServerFailure extends ApiFailures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive timeout with ApiServer");
      case DioExceptionType.badCertificate:
      // return ServerFailure.fromBadResponse(dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
          dioError.response!.statusCode,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer was canceld");
      case DioExceptionType.connectionError:
        // return ServerFailure("No internet connection");
      case DioExceptionType.unknown:
        if (dioError.message?.contains("SocketException") ?? false) {
          return ServerFailure("No internet connection");
        }
        return ServerFailure("Unexpected Error, Please try again!");
      default:
        return ServerFailure(
            "Opps! there is throw with error, please try again!");
    }
  }

  factory ServerFailure.fromBadResponse(int? statusCode, dynamic badResponse) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(badResponse['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, please try later!");
    } else {
      return ServerFailure(
          "Opps! there is throw with error, please try again!");
    }
  }
}
