import 'package:avito_page/models/category_model.dart';
import 'package:avito_page/widgets/my_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Предложение", style: TextStyle(
          color: Colors.black,
          letterSpacing: -0.41.w,
          height: 22.h/17.sp,
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
          )),
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
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
          ),
          child: Column(
            children: [
              SizedBox(height: 19.h),
              CarouselSlider(
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
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 12.0.h),
                  child: Text(
                    "Квартира-студия, 40м, 16/23 эт.",
                    style: TextStyle(
                      height: 25.h/18.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.24.w,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              Row(children: [
                Icon(
                  size: 16.r,
                  Icons.location_on_outlined,
                  color: Colors.lightBlue,
                ),
                SizedBox(width: 4.w,),
                Text(
                  "Центр (Кировский р-н.), Очаковская, 39",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 13.sp,
                    height: 18.h/13.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.08.w,
                  ),
                )
              ]),
            ],
          ),
        ),
        SizedBox(height: 10.0.h),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16.0.w),
            child: Column(
              children: [
                Container(
                  height: 27.h,
                  width: 82.w,
                  color: Colors.yellow,
                  child: const Center(child: Text("2,3 млн ₽")),
                ),
                SizedBox(
                  height: 40.h,
                ),
                 Text("Описание", textAlign: TextAlign.left, style: TextStyle(
                    fontSize: 16.sp,
                    height: 20.h/16.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.24.w,
                ),),
              ],
            ),
          ),
        )
      ]),
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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 9.0.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.59.w,
                    height: 10.h / 9.sp
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
