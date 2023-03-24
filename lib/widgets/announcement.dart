import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_icons.dart';
import '../utils/app_text_styles.dart';

class AnnouncementWidget extends StatelessWidget {
  const AnnouncementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 16.w, top: 12.h, bottom: 15.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Квартира-студия, 40м, 16/23 эт.",
          style: AppTextStyles.adNameTextStyle,
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(children: [
          SvgPicture.asset(AppIcons.geoAlt1Icon),
          SizedBox(
            width: 4.w,
          ),
          Text("Центр (Кировский р-н.), Очаковская, 39",
              style: AppTextStyles.geolocationTextStyle),
        ]),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 27.h,
          width: 82.w,
          color: Colors.yellow,
          child: Center(
              child: RichText(
                  text: TextSpan(children: [
            TextSpan(text: "2,3 млн", style: AppTextStyles.adPriceTextStyle),
            const TextSpan(text: " ₽", style: TextStyle(color: Colors.black)),
          ]))),
        ),
      ]),
    );
  }
}