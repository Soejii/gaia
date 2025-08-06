import 'package:gaia/shared/core/types/failure.dart';

sealed class Result<T> {
  const Result();
  R fold<R>(R Function(Failure) onErr, R Function(T) onOk);

  bool get isOk => this is Ok<T>;
  bool get isErr => this is Err<T>;
}

class Ok<T> extends Result<T> {
  final T value;
  const Ok(this.value);

  @override
  R fold<R>(R Function(Failure) onErr, R Function(T) onOk) => onOk(value);
}

class Err<T> extends Result<T> {
  final Failure failure;
  const Err(this.failure);

  @override
  R fold<R>(R Function(Failure) onErr, R Function(T) onOk) => onErr(failure);
}

Future<Result<T>> guard<T>(Future<T> Function() task) async {
  try {
    final value = await task();
    return Ok(value);
  } catch (e, st) {
    if (e is Failure) return Err(e);
    return Err(UnknownFailure(e, stackTrace: st));
  }
}
