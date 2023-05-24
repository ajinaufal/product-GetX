import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightMode => ThemeData(
      useMaterial3: true,
      // textTheme: textTheme,
      colorScheme: const ColorScheme.light(
        background: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: false,
        titleTextStyle: fontFamily.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          height: 24.h / 16.sp,
        ),
        toolbarHeight: 56.0.h,
        shadowColor: Colors.black.withOpacity(0.12),
        scrolledUnderElevation: 2.0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: fontFamily.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          height: 16.h / 12.sp,
        ),
      ));

  static TextStyle get fontFamily => GoogleFonts.plusJakartaSans();

  static TextTheme get textTheme => typography.copyWith(
        headlineLarge: fontFamily.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 32.sp,
          height: 40.h / 32.sp,
        ),
        headlineMedium: fontFamily.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 28.sp,
          height: 36.h / 28.sp,
        ),
        headlineSmall: fontFamily.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 24.sp,
          height: 32.h / 24.sp,
        ),
        titleLarge: fontFamily.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 22.sp,
          height: 28.h / 22.sp,
        ),
        titleMedium: fontFamily.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          height: 24.h / 16.sp,
        ),
        titleSmall: fontFamily.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          height: 20.h / 14.sp,
        ),
        bodyLarge: fontFamily.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          height: 24.h / 16.sp,
        ),
        bodyMedium: fontFamily.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          height: 20.h / 14.sp,
        ),
        bodySmall: fontFamily.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          height: 16.h / 12.sp,
        ),
        labelLarge: fontFamily.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          height: 20.h / 14.sp,
        ),
        labelMedium: fontFamily.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
          height: 16.h / 12.sp,
        ),
        labelSmall: fontFamily.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 11.sp,
          height: 16.h / 11.sp,
        ),
      );

  static TextTheme get typography => GoogleFonts.plusJakartaSansTextTheme();
}
