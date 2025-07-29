import 'dart:async';
import 'package:flutter/foundation.dart';

/// Listenable that calls notifyListeners() whenever the stream emits.
class StreamNotifier extends ChangeNotifier {
  StreamNotifier(Stream<dynamic> stream) {
    _sub = stream.listen((_) => notifyListeners());
  }
  late final StreamSubscription _sub;

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
