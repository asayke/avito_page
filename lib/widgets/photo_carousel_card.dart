import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/category_model.dart';
import '../utils/app_text_styles.dart';
import 'my_image.dart';

class PhotoCarouselCardWidget extends StatelessWidget {
  final Category category;

  const PhotoCarouselCardWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyImage(imagePath: category.imagePath),
        Positioned(
          bottom: 0.0.h,
          left: 0.0.w,
          right: 0.0.w,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 10.0.h),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3.0)),
                color: Color.fromARGB(140, 0, 0, 0),
              ),
              width: 35.w,
              height: 16.h,
              child: Center(
                child: Text(
                  "${category.number}/${Category.categories.length}",
                  style: AppTextStyles.categoryNumberTextStyle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}