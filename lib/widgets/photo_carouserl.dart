import 'package:avito_page/widgets/photo_carousel_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_images.dart';

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
            children: const [
              PhotoCardWidget(imagePath: AppImages.photoCard0, number: 1),
              PhotoCardWidget(imagePath: AppImages.photoCard1, number: 2),
              PhotoCardWidget(imagePath: AppImages.photoCard2, number: 3),
              PhotoCardWidget(imagePath: AppImages.photoCard3, number: 4),
            ],
          ),
        )
      ],
    );
  }
}
