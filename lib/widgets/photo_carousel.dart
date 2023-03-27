import 'package:avito_page/utils/app_images.dart';
import 'package:avito_page/utils/app_text_styles.dart';
import 'package:avito_page/widgets/photo_carousel_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoCarouselWidget extends StatefulWidget {
  const PhotoCarouselWidget({super.key});

  @override
  State<PhotoCarouselWidget> createState() => _PhotoCarouselWidgetState();
}

class _PhotoCarouselWidgetState extends State<PhotoCarouselWidget> {
  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          color: const Color.fromRGBO(250, 250, 250, 1),
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          height: 235.h,
          child: PageView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
            children: AppImages.photos
                .map((e) => PhotoCardWidget(imagePath: e))
                .toList(),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10.0.h),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(3.0),
              ),
              color: Color.fromRGBO(0, 0, 0, 0.6),
            ),
            width: 35.w,
            height: 16.h,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 9.w,
                vertical: 3.h,
              ),
              child: Text(
                "${activePage + 1}/4",
                style: AppTextStyles.categoryNumberTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
