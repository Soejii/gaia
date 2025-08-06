import 'package:dio/dio.dart';
import '../types/failure.dart'; // adjust the path

extension Exception on DioException {
  /// Convert any DioException to a typed [Failure] the rest of
  /// your app understands. Keep ALL Dio details boxed in here.
  Failure toFailure() {
    // 1️⃣ Pure connectivity issues (no HTTP response yet)
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return const NetworkFailure(-1, 'Connection timed-out');
      case DioExceptionType.connectionError:
        return const NetworkFailure(-1, 'No internet connection');
      case DioExceptionType.cancel:
        return const CancelledFailure();
      default:
        // fall through and try HTTP mapping
        break;
    }

    // 2️⃣ We got an HTTP response; map on status code
    final status = response?.statusCode ?? -1;

    switch (status) {
      case 401:
        return const UnauthorizedFailure();
      case 403:
        return const ForbiddenFailure();
      case 404:
        return NetworkFailure(status, 'Endpoint not found');
      case 422:
        final msg = _firstErrorMessage(response?.data);
        return ValidationFailure(msg);
      case 500:
        return NetworkFailure(status, 'duar');
      default:
        return NetworkFailure(
          status,
          response?.statusMessage ?? 'Unknown network error',
        );
    }
  }

  // Helper to read “message” or first error in a Laravel-style payload.
  String _firstErrorMessage(dynamic data) {
    if (data is Map && data['message'] is String) return data['message'] as String;
    if (data is Map && data['errors'] is Map && data['errors'].isNotEmpty) {
      return (data['errors'] as Map).values.first.first as String? ?? 'Validation error';
    }
    return 'Validation error';
  }
}
