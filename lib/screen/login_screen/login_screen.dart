import 'package:medical_app/consts/consts.dart';
import 'package:medical_app/screen/home_screen/home_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../components/primary_button.dart';
import '../../components/custom_text_field.dart';
import '../../consts/colors.dart';
import '../home_screen/home.dart';
import '../signup_screen/signup_screen.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isVisibility = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                        AppAssets.logo,
                        height: 200,
                      ),
                      10.heightBox,
                      AppStyles.bold(
                          title: AppStrings.welcomeBack,
                          size: AppSizes.size20,
                          color: AppColors.textColor),
                      AppStyles.bold(title: AppStrings.weAreExcited),
                      70.heightBox,
                      CustomTextField(
                        textInputType: TextInputType.emailAddress,
                        hintText: AppStrings.email,
                        prefixicon: const Icon(Icons.email),
                        textEditingController: _emailController,
                      ),
                      10.heightBox,
                      // Password
                      CustomTextField(
                        obscureText: isVisibility,
                        hintText: AppStrings.password,
                        prefixicon: const Icon(Icons.lock),
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
                      20.heightBox,
                      Align(
                        alignment: Alignment.centerRight,
                        child: AppStrings.forgotPassword.text.make(),
                      ),
                      20.heightBox,
                      PrimaryButton(
                        title: AppStrings.login,
                        onPressed: () {
                          Get.to(() => const Home(),
                              transition: Transition.zoom);
                        },
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => const SignupView());
                      },
                      child: AppStrings.dontHaveAccount.text.make()),
                  8.widthBox,
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const SignupView());
                    },
                    child: AppStrings.signUp.text
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
