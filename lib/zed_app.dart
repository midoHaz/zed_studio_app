import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zed_studio_app/core/routing/app_router.dart';
import 'package:zed_studio_app/core/routing/routes.dart';

class ZedApp extends StatefulWidget {
  final AppRouter appRouter;

  const ZedApp({super.key, required this.appRouter});

  @override
  State<ZedApp> createState() => _ZedAppState();
}

class _ZedAppState extends State<ZedApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: widget.appRouter.generateRoute,
      ),
    );
  }
}
