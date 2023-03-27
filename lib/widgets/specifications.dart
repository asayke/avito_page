import 'package:avito_page/widgets/property.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_icons.dart';
import '../utils/app_text_styles.dart';
import 'more_detailed.dart';

class SpecificationsWidget extends StatelessWidget {
  const SpecificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.w,
        top: 15.h,
        bottom: 15.h,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Характеристики",
            style: AppTextStyles.descriptionTitleTextStyle,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Об объекте",
            style: AppTextStyles.aboutObjectTextStyle,
          ),
          const PropertyWidget(
            iconPath: AppIcons.borderOuter1Icon,
            propertyName: "Планировка",
            propertyValue: "Смежная",
          ),
          const PropertyWidget(
            iconPath: AppIcons.borderTop1Icon,
            propertyName: "Высота полотков",
            propertyValue: "От 2,5 м",
          ),
          const PropertyWidget(
            iconPath: AppIcons.tools1Icon,
            propertyName: "Ремонт",
            propertyValue: "Без ремонта",
          ),
          SizedBox(
            height: 7.h,
          ),
          const MoreDetailedButton(),
        ],
      ),
    );
  }
}
