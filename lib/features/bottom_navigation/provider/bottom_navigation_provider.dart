import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_provider.g.dart';

@riverpod
class BottomNavIndex extends _$BottomNavIndex {
  @override
  int build() => 0;

  void setNewIndex(int newIndex) => state = newIndex;
}
