import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key, required this.text1, required this.text2, required this.onTap});
  final String text1;
  final String text2;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            text: text2,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = onTap,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
