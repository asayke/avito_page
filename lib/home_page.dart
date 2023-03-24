import 'package:avito_page/models/category_model.dart';
import 'package:avito_page/utils/app_icons.dart';
import 'package:avito_page/utils/app_images.dart';
import 'package:avito_page/widgets/announcement.dart';
import 'package:avito_page/widgets/avito_provider.dart';
import 'package:avito_page/widgets/desctription.dart';
import 'package:avito_page/widgets/my_image.dart';
import 'package:avito_page/widgets/photo_carousel_card.dart';
import 'package:avito_page/widgets/separation_of_sections.dart';
import 'package:avito_page/widgets/specifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'utils/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Предложение", style: AppTextStyles.titleTextStyle),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppIcons.uploadIcon)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppIcons.threeDots1Icon)),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
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
                    .map((category) => PhotoCarouselCardWidget(
                          category: category,
                        ))
                    .toList(),
              ),
            ),
            const AnnouncementWidget(),
            const SeparationOfSectionsWidget(),
            const DescriptionWidget(),
            const SeparationOfSectionsWidget(),
            const SpecificationsWidget(),
            const SeparationOfSectionsWidget(),
            const AvitoProviderWidget(),
          ],
        ),
      ),
    );
  }
}