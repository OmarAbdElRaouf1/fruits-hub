import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/assets.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/core/widgets/custom_form_text_field.dart';
import 'package:fruits_market/features/auth/presentation/views/login/widgets/custom_social_button.dart';
import 'package:fruits_market/features/auth/presentation/views/login/widgets/dont_have_account.dart';
import 'package:fruits_market/features/auth/presentation/views/login/widgets/forget_password.dart';
import 'package:fruits_market/features/auth/presentation/views/login/widgets/or_divider.dart';
import 'package:svg_flutter/svg.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomFormTextField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),

            SizedBox(height: 16.h),

            CustomFormTextField(
              obscureText: isObscure,
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,

              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: SvgPicture.asset(
                  isObscure ? Assets.imagesEyeOff : Assets.imagesEyeOn,
                  width: 24.w,
                  height: 24.h,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            const ForgetPassword(),
            SizedBox(height: 33.h),
            CustomButton(onPressed: () {}, text: 'تسجيل الدخول'),
            SizedBox(height: 33.h),
            DontHaveAccount(
              text1: 'لا تمتلك حساب؟',
              text2: 'قم بإنشاء حساب',
              onTap: () {
                // Handle navigation to sign up page
                Navigator.pushNamed(context, 'SignUp');
              },
            ),
            SizedBox(height: 33.h),
            const OrDivider(),
            SizedBox(height: 16.h),

            CustomSocialButton(
              text: 'تسجيل باستخدام جوجل',
              icon: Assets.imagesGoogle,
              onPressed: () {},
            ),
            SizedBox(height: 16.h),
            CustomSocialButton(
              text: 'تسجيل باستخدام ابل',
              icon: Assets.imagesApple,
              onPressed: () {},
            ),
            SizedBox(height: 16.h),
            CustomSocialButton(
              text: 'تسجيل باستخدام فيسبوك',
              icon: Assets.imagesFacebook,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
