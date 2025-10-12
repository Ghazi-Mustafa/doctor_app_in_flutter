import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/* 
1//03XPmeV33HP1MCgYIARAAGAMSNwF-L9Irf7SbAnxliQpFDMOQIZOV206Zr7pDYU-dy4oj7fH-gpwBo9-GjWujohvWvPgNLuNRUdM
*/
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetit();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
