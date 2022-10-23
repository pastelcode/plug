import 'dart:developer';

import 'package:equatable/equatable.dart';

/// An enum to represent the different types of errors this application has.
enum ErrorType {
  /// The exception type.
  exception,

  /// The failure type.
  failure,
}

/// {@template base_error}
/// A custom base class to extend failures and exceptions.
///
/// When an instance of this base error class is created, a log instruction
/// is automatically triggered.
/// {@endtemplate}
abstract class BaseError extends Equatable {
  /// {@macro base_error}
  BaseError({
    required this.message,
    required ErrorType type,
  }) {
    log(
      toString(),
      name: type.name,
    );
  }

  /// The message of this error.
  final String message;

  @override
  String toString() {
    final propsMap = {
      'message': message,
      ...props[0],
    };

    return '$runtimeType${propsMap.entries.map<String>(
      (
        MapEntry<String, dynamic> element,
      ) {
        final name = element.key;
        final value = element.value;
        return '$name: $value';
      },
    )}';
  }

  /// **Note**: for [toString] to work properly, [props] should be a list
  /// of a map with the name of the prop as the key and its corresponding value.
  ///
  /// `message` should not be overwritten.
  ///
  /// Example:
  ///
  /// ```dart
  /// List<Map<String, dynamic>> get props => [
  ///       {
  ///         'statusCode': statusCode,
  ///         'requestUrl': url,
  ///       },
  ///     ];
  /// ```
  @override
  List<Map<String, dynamic>> get props => [
        {
          'message': message,
        },
      ];
}
