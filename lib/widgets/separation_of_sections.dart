import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeparationSectionsWidget extends StatelessWidget {
  const SeparationSectionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(250, 250, 250, 1),
      child: SizedBox(
        height: 10.h,
      ),
    );
  }
}
