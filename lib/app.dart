import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/infrastructure/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(appRouterProvider);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        routerConfig: routerConfig,
      ),
    );
  }
}
