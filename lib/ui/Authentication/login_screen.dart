import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_harbor/constant/app_color.dart';
import 'package:help_harbor/ui/Authentication/auth_controller.dart';
import 'package:help_harbor/utils/app_routes.dart';
import 'package:help_harbor/utils/extension.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthController authController = Get.put(AuthController());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<AuthController>(
          builder: (controller) {
            return SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    "Help Harbor"
                        .boldReadex(fontSize: 30.sp)
                        .paddingOnly(top: 5.h, bottom: 22.h),
                    Center(
                      child: commonTextFormField(
                        hint: "Email",
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (p0) {
                          if (p0!.isValidEmail()) {
                            return null;
                          } else {
                            log("NOT VALID");
                            return "Please Enter Valid Email";
                          }
                        },
                      ),
                    ),
                    3.h.addHSpace(),
                    Center(
                      child: commonTextFormField(
                        hint: "Password",
                        obSecure: controller.isVisible,
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.changeVisibility();
                          },
                          icon: Icon(
                            controller.isVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: greyColor,
                            size: 6.w,
                          ),
                        ),
                      ),
                    ),
                    5.h.addHSpace(),
                    appButton(
                      width: 90.w,
                      text: "Log In",
                      onTap: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: "Forgot Password?".semiBoldReadex(
                          fontColor: appColor,
                          textDecoration: TextDecoration.underline,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "Haven’t account please"
                            .mediumReadex(fontColor: blackColor),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.signUpScreen);
                            },
                            child:
                                "   Sign up".boldReadex(fontColor: appColor)),
                      ],
                    ).paddingOnly(bottom: 5.h, top: 20.h)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
