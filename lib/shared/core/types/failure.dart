sealed class Failure {
  const Failure();
}

class NetworkFailure extends Failure {
  final int code;
  final String message;
  const NetworkFailure(this.code, this.message);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure();
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure();
}

class ValidationFailure extends Failure {
  final String message;
  const ValidationFailure(this.message);
}

class CancelledFailure extends Failure {
  const CancelledFailure();
}

class UnknownFailure extends Failure {
  final Object error;
  final StackTrace stackTrace;
  const UnknownFailure(this.error, {required this.stackTrace});
}
