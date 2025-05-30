import 'package:circle_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/routes.dart';

class CircleApp extends StatelessWidget {
  final AppRouter appRouter;
  const CircleApp({super.key, required this.appRouter,});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Circle App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Tajawal',
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          initialRoute: Routes.firstPage,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
