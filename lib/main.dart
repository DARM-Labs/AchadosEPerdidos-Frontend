import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/bindings/auth_bindings/login_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/ui/theme/apptheme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    title: "Achados e Perdidos IFCE",
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.SPLASH,
    defaultTransition: Transition.native,
    theme: appThemeData,
    initialBinding: LoginBinding(),
    getPages: AppPages.pages,
    
  ));
}
