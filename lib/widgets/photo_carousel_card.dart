import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoCardWidget extends StatelessWidget {
  final String imagePath;

  const PhotoCardWidget({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: 235.h,
      width: 346.w,
      fit: BoxFit.cover,
    );
  }
}
