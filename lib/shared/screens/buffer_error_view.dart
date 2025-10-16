import 'package:flutter/widgets.dart';
import 'package:gaia/shared/core/types/failure.dart';
import 'package:gaia/shared/screens/no_internet_screen.dart';
import 'package:gaia/shared/screens/unknown_error_screen.dart';


class BufferErrorView extends StatelessWidget {
  final Object error;
  final StackTrace? stackTrace;
  final  Function()? onRetry;
  const BufferErrorView({super.key, required this.error, this.stackTrace, this.onRetry});

  @override
  Widget build(BuildContext context) {
    final f = error is Failure
        ? error as Failure
        : UnknownFailure(error, stackTrace: stackTrace ?? StackTrace.current);

    if (f is NetworkFailure) {
      return NoInternetScreen(onTap: onRetry);
    }
    return UnknownErrorScreen(error: f);
  }
}
