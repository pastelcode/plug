import 'package:plug/core/errors/errors.dart';

/// {@template custom_exception}
/// An interface to represent an exception.
/// {@endtemplate}
abstract class _CustomException extends BaseError implements Exception {
  /// {@macro custom_exception}
  _CustomException({
    required super.message,
  }) : super(
          type: ErrorType.exception,
        );
}

/// {@template server_exception}
/// A server failure.
/// {@endtemplate}
class ServerException extends _CustomException {
  /// {@macro server_exception}
  ServerException({
    required super.message,
    required this.statusCode,
  });

  /// The status code of the failed request.
  final int statusCode;

  @override
  List<Map<String, dynamic>> get props => [
        {
          'statusCode': statusCode,
        },
      ];
}
