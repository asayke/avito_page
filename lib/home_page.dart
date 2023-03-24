import 'package:avito_page/utils/app_icons.dart';
import 'package:avito_page/utils/app_images.dart';
import 'package:avito_page/widgets/announcement.dart';
import 'package:avito_page/widgets/avito_provider.dart';
import 'package:avito_page/widgets/desctription.dart';
import 'package:avito_page/widgets/photo_carousel_card.dart';
import 'package:avito_page/widgets/separation_of_sections.dart';
import 'package:avito_page/widgets/specifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'utils/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activePage = 0;

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
            Stack(
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
                      PhotoCardWidget(
                          imagePath: AppImages.photoCard0, number: 1),
                      PhotoCardWidget(
                          imagePath: AppImages.photoCard1, number: 2),
                      PhotoCardWidget(
                          imagePath: AppImages.photoCard2, number: 3),
                      PhotoCardWidget(
                          imagePath: AppImages.photoCard3, number: 4),
                    ],
                  ),
                )
              ],
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