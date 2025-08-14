import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zed_studio_app/core/routing/app_router.dart';
import 'package:zed_studio_app/zed_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ZedApp(
    appRouter: AppRouter(),
  ));
}
