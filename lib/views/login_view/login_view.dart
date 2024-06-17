import 'package:flutter/material.dart';
import 'package:medical_app/consts/images.dart';

import '../../components/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                AppAssets.logo,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                child: const Column(
                  children: [
                    CustomTextField(
                      hintText: "Enter your email",
                      icon: Icon(Icons.email),
                    ),
                    CustomTextField(
                      hintText: "Enter your password",
                      icon: Icon(Icons.lock),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
