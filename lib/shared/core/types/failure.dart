sealed class Failure {
  const Failure();
}

class NetworkFailure extends Failure {
  final int statusCode;
  final String message;
  const NetworkFailure(this.statusCode, this.message);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure();
}

class UnknownFailure extends Failure {
  final Object error;
  const UnknownFailure(this.error);
}