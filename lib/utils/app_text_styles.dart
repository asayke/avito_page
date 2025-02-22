import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  static const String fontFamilyOpenSans = "OpenSans";

  static final TextStyle descriptionTextStyle = TextStyle(
      fontSize: 12.sp,
      fontFamily: fontFamilyOpenSans,
      fontWeight: FontWeight.w400,
      height: 16.8.h / 12.sp,
      letterSpacing: 0.35.w);

  static final TextStyle geolocationTextStyle = TextStyle(
      color: const Color.fromRGBO(0, 122, 255, 1),
      fontSize: 13.sp,
      height: 18.h / 13.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.08.w,
      fontFamily: fontFamilyOpenSans);

  static final TextStyle descriptionTitleTextStyle = TextStyle(
      fontSize: 18.sp,
      height: 15.h / 18.sp,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.35.w,
      fontFamily: fontFamilyOpenSans);

  static final TextStyle adNameTextStyle = TextStyle(
      height: 25.h / 18.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.24.w,
      fontSize: 18.sp,
      fontFamily: fontFamilyOpenSans);

  static final TextStyle categoryNumberTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 9.0.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.59.w,
      height: 10.h / 9.sp,
      fontFamily: fontFamilyOpenSans);

  static final TextStyle titleTextStyle = TextStyle(
      color: Colors.black,
      letterSpacing: -0.41.w,
      height: 22.h / 17.sp,
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamilyOpenSans);

  static final TextStyle aboutObjectTextStyle = TextStyle(
      color: const Color.fromRGBO(60, 60, 67, 0.6),
      fontSize: 12.sp,
      height: 16.h / 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamilyOpenSans);

  static final TextStyle goToAvitoTitleTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 15.sp,
      height: 22.h / 15.sp,
      letterSpacing: -0.41.w,
      fontFamily: fontFamilyOpenSans);

  static final TextStyle adPriceTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      height: 20.h / 16.sp,
      fontSize: 16.sp,
      letterSpacing: -0.24.w,
      fontFamily: fontFamilyOpenSans);
}
