import 'package:avito_page/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_text_styles.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, bottom: 15.h, top: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Описание",
            textAlign: TextAlign.left,
            style: AppTextStyles.descriptionTitleTextStyle,
          ),
          SizedBox(height: 11.h),
          Text(
            "Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты ${"Магнит"},  ${"Пятерочка"}, ${"Лента"}, ${"Метро"}, отделение ${"Сбербанка"}. В районе работают : 6 детских садов, 1 школа. Есть собственная управляющая компания.",
            style: AppTextStyles.descriptionTextStyle,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(children: [
            SvgPicture.asset(AppIcons.chevronDown1Icon),
            SizedBox(
              width: 4.w,
            ),
            Text("Подробнее", style: AppTextStyles.geolocationTextStyle),
          ]),
        ],
      ),
    );
  }
}