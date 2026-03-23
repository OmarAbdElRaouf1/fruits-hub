import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/cusotm_app_bar.dart';
import 'package:fruits_market/features/auth/presentation/views/sign_up/widgets/sign_up_body.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static const String routeName = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ' حساب جديد'),
      body: SignUpBody(),
    );
  }
}
