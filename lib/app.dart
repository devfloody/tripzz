import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tripzz/config/app_theme.dart';
import 'package:tripzz/router/app_router.dart';

class TripzzApp extends HookConsumerWidget {
  const TripzzApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Tripzz',
          theme: ThemeData(
            colorSchemeSeed: kMainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          routerConfig: router,
        );
      },
    );
  }
}
