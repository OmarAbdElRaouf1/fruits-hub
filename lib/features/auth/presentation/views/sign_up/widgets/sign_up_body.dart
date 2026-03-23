import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/assets.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/core/widgets/custom_form_text_field.dart';
import 'package:fruits_market/features/auth/presentation/views/login/login.dart';
import 'package:fruits_market/features/auth/presentation/views/login/widgets/dont_have_account.dart';
import 'package:fruits_market/features/auth/presentation/views/sign_up/widgets/terms_and_conditions.dart';
import 'package:svg_flutter/svg.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomFormTextField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),

            SizedBox(height: 16.h),
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
            TermsAndConditionsWidget(
              onChanged: (bool value) {
                // Handle terms and conditions acceptance
              },
            ),
            SizedBox(height: 33.h),
            CustomButton(onPressed: () {}, text: 'إنشاء حساب جديد'),
            SizedBox(height: 33.h),
            DontHaveAccount(
              text1: 'تمتلك حساب بالفعل؟',
              text2: 'تسجيل الدخول',
              onTap: () {
                // Handle navigation to login page
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                  (route) => false,
                );
              },
            ),
            SizedBox(height: 33.h),
          ],
        ),
      ),
    );
  }
}
