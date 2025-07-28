import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/bottom_navigation/provider/bottom_navigation_provider.dart';
import 'package:gaia/features/login/presentation/screen/login_screen.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({super.key});

  static final _pages = [
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navIndex = ref.watch(bottomNavIndexProvider);
    return Scaffold(
      body: IndexedStack(
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navIndex,
        backgroundColor: AppColors.mainColorSidigs,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.abc,
              color: Colors.white,
            ),
            label: 'Aktivitas',
          ),
        ],
        height: 80.h,
        onDestinationSelected:
            ref.read(bottomNavIndexProvider.notifier).setNewIndex,
      ),
    );
  }
}
