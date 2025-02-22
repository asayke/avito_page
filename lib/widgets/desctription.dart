import 'package:avito_page/utils/app_text_styles.dart';
import 'package:avito_page/widgets/more_detailed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        left: 16.w,
        bottom: 15.h,
        top: 15.h,
      ),
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
            'Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты "Магнит", "Пятерочка", "Лента", "Метро", отделение "Сбербанка". В районе работают : 6 детских садов, 1 школа. Есть собственная управляющая компания.',
            style: AppTextStyles.descriptionTextStyle,
            textAlign: TextAlign.left,
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
