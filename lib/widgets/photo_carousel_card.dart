import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_text_styles.dart';

class PhotoCardWidget extends StatelessWidget {
  final String imagePath;
  final int number;

  const PhotoCardWidget(
      {super.key, required this.imagePath, required this.number});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        imagePath,
        height: 235.h,
        width: 346.w,
        fit: BoxFit.cover,
      ),
      Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 10.0.h),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.0)),
            color: Color.fromRGBO(0, 0, 0, 0.6),
          ),
          width: 35.w,
          height: 16.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
            child: Text(
              "$number/4",
              style: AppTextStyles.categoryNumberTextStyle,
            ),
          ),
        ),
      ),
    ]);
  }
}