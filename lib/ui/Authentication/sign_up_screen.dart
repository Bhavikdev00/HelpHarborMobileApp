import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_harbor/constant/app_color.dart';
import 'package:help_harbor/constant/app_string.dart';
import 'package:help_harbor/ui/Authentication/auth_controller.dart';
import 'package:help_harbor/utils/app_routes.dart';
import 'package:help_harbor/utils/extension.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  AuthController authController = Get.find<AuthController>();

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
                        .paddingOnly(top: 5.h, bottom: 15.h),
                    Center(
                      child: commonTextFormField(
                        controller: controller.emailController,
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
                        controller: controller.passwordController,
                        hint: "Password",
                        obSecure: controller.isVisible,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "Please Enter Password";
                          }
                          if (p0!.length < 6) {
                            return "Password Must be 6 character";
                          }
                          return null;
                        },
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
                    3.h.addHSpace(),
                    Center(
                      child: commonTextFormField(
                        controller: controller.cPasswordController,
                        hint: "Confirm Password",
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "Please Enter Confirm Password";
                          } else if (p0 != controller.passwordController.text) {
                            return "Password and Confirm Password not match";
                          }
                          return null;
                        },
                      ),
                    ),
                    5.h.addHSpace(),
                    appButton(
                      width: 90.w,
                      text: "Next",
                      onTap: () {
                        // if (_formKey.currentState!.validate()) {
                        //   Get.toNamed(Routes.userDetailScreen);
                        // }
                        Get.toNamed(Routes.userDetailScreen);
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppString.signUpNotice.semiBoldReadex(
                            fontColor: Colors.black, fontSize: 13.sp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppString.termsOfService
                                .semiBoldReadex(fontSize: 13.sp),
                            ", Or ".semiBoldReadex(fontColor: blackColor),
                            GestureDetector(
                              onTap: () async {
                                controller.launchUrlFun(
                                    url:
                                        "https://www.freeprivacypolicy.com/live/b0829a8f-86b3-4ce3-8240-02bc347dd4d9");
                              },
                              child: AppString.privacyPolicy
                                  .semiBoldReadex(fontSize: 13.sp),
                            ),
                          ],
                        )
                      ],
                    ).paddingOnly(top: 8.h, bottom: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "Already have an account?"
                            .mediumReadex(fontColor: blackColor),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.loginScreen);
                            },
                            child: " Log in".boldReadex(fontColor: appColor)),
                      ],
                    ).paddingOnly(bottom: 5.h, top: 10.h)
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
