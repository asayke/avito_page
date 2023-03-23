import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  static const String fontFamilyOpenSans = "OpenSans";

  static final TextStyle descriptionTextStyle = TextStyle(
      fontSize: 12.sp,
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w400,
      height: 16.8.h / 12.sp,
      letterSpacing: 0.35.w);

  static final TextStyle geolocationTextStyle = TextStyle(
      color: Colors.lightBlue,
      fontSize: 13.sp,
      height: 18.h / 13.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.08.w,
      fontFamily: "OpenSans");

  static final TextStyle descriptionTitleTextStyle = TextStyle(
      fontSize: 18.sp,
      height: 15.h / 18.sp,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.35.w,
      fontFamily: "OpenSans");

  static final TextStyle adNameTextStyle = TextStyle(
      height: 25.h / 18.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.24.w,
      fontSize: 18.sp,
      fontFamily: "OpenSans");
}
