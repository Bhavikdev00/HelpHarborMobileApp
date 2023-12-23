import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_harbor/constant/app_color.dart';
import 'package:help_harbor/ui/Authentication/auth_controller.dart';
import 'package:help_harbor/utils/extension.dart';
import 'package:help_harbor/utils/image_helper.dart';
import 'package:sizer/sizer.dart';

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<AuthController>(
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: 16.h,
                    height: 16.h,
                    child: Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 15.h,
                            height: 15.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: controller.profileImage == null
                                      ? const AssetImage(
                                          "assets/images/profileImage.jpeg")
                                      : FileImage(
                                              controller.profileImage as File)
                                          as ImageProvider,
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                                color: appColor),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: GestureDetector(
                              onTap: () {
                                controller.pickImage();
                              },
                              child: const CircleAvatar(
                                radius: 15,
                                backgroundColor: appColor,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: whiteColor,
                                  size: 16,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ).paddingOnly(top: 8.h, bottom: 4.h),
                Center(
                  child: commonTextFormField(
                    controller: controller.userNameController,
                    hint: "User Name",
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Please Enter USerName";
                      }
                      return null;
                    },
                  ),
                ),
                3.h.addHSpace(),
                Center(
                  child: commonTextFormField(
                    controller: controller.firstNameController,
                    hint: "First Name",
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Please Enter Full Name";
                      }
                      return null;
                    },
                  ),
                ),
                3.h.addHSpace(),
                Center(
                  child: commonTextFormField(
                    controller: controller.lastNameController,
                    hint: "Last Name  (Optional)",
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                3.h.addHSpace(),
                Center(
                  child: commonTextFormField(
                    controller: controller.phoneNumberController,
                    hint: "Phone Number",
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                7.h.addHSpace(),
                appButton(
                    onTap: () {
                      print(
                          "Image ${ImageHelper.fileToBase64(controller.profileImage as File)}");
                    },
                    width: 90.w,
                    text: "Sign Up")
              ],
            );
          },
        ),
      ),
    );
  }
}
