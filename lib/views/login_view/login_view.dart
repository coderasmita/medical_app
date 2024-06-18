import 'package:flutter/material.dart';
import 'package:medical_app/consts/images.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../components/primary_button.dart';
import '../../components/custom_text_field.dart';
import '../../consts/strings.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Image.asset(
              AppAssets.logo,
              height: 200,
            ),
            10.heightBox,
            AppStrings.welcomeBack.text.make(),
            Expanded(
              // flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomTextField(
                    hintText: AppStrings.email,
                    icon: Icon(Icons.email),
                  ),
                  10.heightBox,
                  const CustomTextField(
                    hintText: AppStrings.password,
                    icon: Icon(Icons.lock),
                  ),
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppStrings.forgotPassword.text.make(),
                  ),
                  20.heightBox,
                  PrimaryButton(
                    title: AppStrings.login,
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppStrings.dontHaveAccount.text.make(),
                      8.widthBox,
                      AppStrings.signUp.text.make(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
