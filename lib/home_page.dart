import 'package:avito_page/utils/app_icons.dart';
import 'package:avito_page/widgets/announcement.dart';
import 'package:avito_page/widgets/avito_provider.dart';
import 'package:avito_page/widgets/desctription.dart';
import 'package:avito_page/widgets/photo_carouserl.dart';
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
            const PhotoCarouselWidget(),
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
