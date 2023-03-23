import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PropertyWidget extends StatelessWidget {
  final String iconPath;
  final String propertyName;
  final String propertyValue;
  const PropertyWidget({
    super.key,
    required this.iconPath,
    required this.propertyName,
    required this.propertyValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 11.h,
            bottom: 11.h,
            right: 16.w,
          ),
          child: Row(
            children: [
              SvgPicture.asset(iconPath),
              SizedBox(width: 10.w),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(propertyName),
                    Text(propertyValue),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
