import 'package:ethiscan/domain/core/either.dart';

class APIError extends Failure {
  final String message;
  final int code;

  APIError(this.message, this.code);
}
