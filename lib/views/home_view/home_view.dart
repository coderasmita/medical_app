import 'package:flutter/material.dart';
import 'package:medical_app/consts/colors.dart';
import 'package:medical_app/consts/consts.dart';

import '../../consts/app_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.blueColor,
        title: AppStyles.bold(
            title: "${AppStrings.welcome} User",
            size: AppSizes.size18,
            color: const Color(0xffffffff)),
      ),
      body: const Center(
        child: Text('Home View'),
      ),
    );
  }
}
