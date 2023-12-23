import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:help_harbor/constant/app_color.dart';
import 'package:help_harbor/utils/extension.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthController extends GetxController {
  bool isVisible = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  void changeVisibility() {
    isVisible = !isVisible;
    update();
  }

  Future<void> launchUrlFun({required String url}) async {
    if (await launchUrl(Uri.parse(url))) {
    } else {
      throw Exception('Could not launch $url');
    }
  }

  File? profileImage;
  Future pickImage() async {
    try {
      XFile? image;

      Get.dialog(
        SimpleDialog(
          backgroundColor: whiteColor,
          title: 'Choose an option'
              .semiBoldReadex(fontColor: appColor, fontSize: 15.sp),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () async {
                    image = await ImagePicker()
                        .pickImage(source: ImageSource.camera);
                    profileImage = File(image!.path);

                    print("IMAGE UPLODED");
                    update();
                    Get.back();
                  },
                  child: Container(
                    width: 8.h,
                    height: 8.h,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: greyColor, blurRadius: 2)
                      ],
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: appColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    image = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    profileImage = File(image!.path);

                    print("IMAGE UPLODED");
                    update();
                    Get.back();
                  },
                  child: Container(
                      width: 8.h,
                      height: 8.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(color: greyColor, blurRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.photo,
                        color: appColor,
                      )),
                ),
              ],
            )
          ],
        ),
      );
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
}
