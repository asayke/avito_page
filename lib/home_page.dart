import 'package:avito_page/models/category_model.dart';
import 'package:avito_page/utils/app_icons.dart';
import 'package:avito_page/widgets/announcement.dart';
import 'package:avito_page/widgets/desctription.dart';
import 'package:avito_page/widgets/my_image.dart';
import 'package:avito_page/widgets/specifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'utils/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Предложение",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: -0.41.w,
                height: 22.h / 17.sp,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                fontFamily: "OpenSans")),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              color: Colors.lightBlue,
              onPressed: () {},
              icon: const Icon(Icons.upload)),
          IconButton(
              color: Colors.lightBlue,
              onPressed: () {},
              icon: const Icon(Icons.more_horiz)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 19.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 235.h,
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories
                    .map((category) => PhotoCarouselCard(
                          category: category,
                        ))
                    .toList(),
              ),
            ),
            const AnnouncementWidget(),
            SizedBox(height: 10.h,),
            const DescriptionWidget(),
            const SpecificationsWidget(),
          ],
        ),
      ),
    );
  }
}

class PhotoCarouselCard extends StatelessWidget {
  final Category category;

  const PhotoCarouselCard({super.key, required this.category});

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
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                color: const Color.fromARGB(140, 0, 0, 0),
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