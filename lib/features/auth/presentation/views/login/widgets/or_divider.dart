import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0xFFEDEDED), thickness: 1)),
        SizedBox(width: 12.w),
        Text(
          '  أو  ',
          style: TextStyles.semiBold14.copyWith(color: Color(0xFF616A6B)),
        ),
        SizedBox(width: 12.w),

        const Expanded(child: Divider(color: Color(0xFFEDEDED), thickness: 1)),
      ],
    );
  }
}
