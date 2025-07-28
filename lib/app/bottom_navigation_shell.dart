import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationShell extends StatelessWidget {
  const BottomNavigationShell({super.key, required this.shell});
  final StatefulNavigationShell shell;

  static const _destinations = [
    NavigationDestination(icon: Icon(Icons.home),     label: 'Home'),
    NavigationDestination(icon: Icon(Icons.history),  label: 'Aktivitas'),
    NavigationDestination(icon: Icon(Icons.favorite), label: 'Fav'),
    NavigationDestination(icon: Icon(Icons.person),   label: 'Me'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shell, // shows current branch’s Navigator
      bottomNavigationBar: NavigationBar(
        selectedIndex: shell.currentIndex,
        onDestinationSelected: shell.goBranch,
        destinations: _destinations,
        backgroundColor: AppColors.mainColorSidigs,
        height: 80.h,
      ),
    );
  }
}
