import 'package:cart_product_test/app/routes/app_routes.dart';
import 'package:cart_product_test/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class CartProductTestApp extends StatefulWidget {
  const CartProductTestApp({super.key});

  @override
  State<CartProductTestApp> createState() => _CartProductTestAppState();
}

class _CartProductTestAppState extends State<CartProductTestApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        initialRoute: AppRoutes.home,
        getPages: AppRoutes.routes,
        debugShowCheckedModeBanner: false,
        title: 'Product',
        theme: AppTheme.lightMode,
      ),
    );
  }
}
