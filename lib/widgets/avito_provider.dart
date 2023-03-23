import 'package:avito_page/utils/app_images.dart';
import 'package:avito_page/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AvitoProviderWidget extends StatelessWidget {
  const AvitoProviderWidget({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);

    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Exception: can't launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.h),
      child: Row(children: [
        SizedBox(
          width: 101.5.w,
        ),
      //  SvgPicture.asset(AppImages.avitoLogoImage),
        SizedBox(
          width: 10.w,
        ),
        GestureDetector(
          onTap: () => _launchURL("www.avito.ru"),
          child: Text("Смотреть на Avito", style: AppTextStyles.goToAvitoTitleTextStyle,),
        )
      ]),
    );
  }
}
