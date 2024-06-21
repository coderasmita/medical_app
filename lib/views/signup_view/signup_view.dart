import 'package:flutter/material.dart';
import 'package:medical_app/consts/app_fonts.dart';
import 'package:medical_app/consts/consts.dart';
import 'package:medical_app/consts/images.dart';
import 'package:medical_app/views/login_view/login_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../components/primary_button.dart';
import '../../components/custom_text_field.dart';
import '../../consts/colors.dart';
import '../../consts/strings.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool isVisibility = true;
  bool isConfirmVisibility = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.sinup,
                      ),
                      10.heightBox,

                      AppStyles.bold(
                          title: AppStrings.signupNow,
                          size: AppSizes.size18,
                          alignment: TextAlign.center),
                      70.heightBox,
                      //fullname
                      const CustomTextField(hintText: AppStrings.fullname),
                      10.heightBox,
                      CustomTextField(
                        textInputType: TextInputType.emailAddress,
                        hintText: AppStrings.email,
                        // prefixicon: const Icon(Icons.email),
                        textEditingController: _emailController,
                      ),
                      10.heightBox,
                      // Password
                      CustomTextField(
                        obscureText: isVisibility,
                        hintText: AppStrings.password,
                        // prefixicon: const Icon(Icons.lock),
                        textEditingController: _passwordController,
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isVisibility = !isVisibility;
                              });
                            },
                            child: Icon(isVisibility
                                ? Icons.visibility
                                : Icons.visibility_off)),
                      ),
                      10.heightBox,
                      //confirm password
                      CustomTextField(
                        obscureText: isConfirmVisibility,
                        hintText: AppStrings.confirmPassword,
                        // prefixicon: const Icon(Icons.lock),
                        textEditingController: _confirmPasswordController,
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isConfirmVisibility = !isConfirmVisibility;
                              });
                            },
                            child: Icon(isConfirmVisibility
                                ? Icons.visibility
                                : Icons.visibility_off)),
                      ),

                      10.heightBox,
                      const CustomTextField(
                        hintText: AppStrings.phoneNumber,
                        textInputType: TextInputType.phone,
                      ),
                      20.heightBox,

                      PrimaryButton(
                        title: AppStrings.signUp,
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppStrings.alreadyHaveAccount.text.make(),
                  8.widthBox,
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const LoginView());
                    },
                    child: AppStrings.login.text
                        .color(AppColors.textColor)
                        .semiBold
                        .make(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
