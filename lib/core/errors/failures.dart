import 'package:plug/core/errors/errors.dart';

/// {@template failure}
/// An interface to represent a failure.
/// {@endtemplate}
abstract class Failure extends BaseError {
  /// {@macro failure}
  Failure({
    required super.message,
  }) : super(
          type: ErrorType.failure,
        );
}

/// {@template server_failure}
/// A server failure.
/// {@endtemplate}
class ServerFailure extends Failure {
  /// {@macro server_failure}
  ServerFailure({
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
