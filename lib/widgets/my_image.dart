import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyImage extends StatelessWidget {
  final String imagePath;

  const MyImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
   return Image(
    //230 450
             height: 235.h,
             width: 346.w,
             image: AssetImage(imagePath), 
             fit: BoxFit.contain,
             alignment: Alignment.center,
    );
   }
}