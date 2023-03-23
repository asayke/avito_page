import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_icons.dart';
import '../utils/app_text_styles.dart';

class MoreDetailedButton extends StatelessWidget {
  const MoreDetailedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(AppIcons.chevronDown1Icon),
      SizedBox(
        width: 4.w,
      ),
      Text("Подробнее", style: AppTextStyles.geolocationTextStyle),
    ]);
  }
}