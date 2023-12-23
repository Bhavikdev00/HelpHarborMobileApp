import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_harbor/constant/app_color.dart';
import 'package:sizer/sizer.dart';

extension SizedExtension on double {
  addHSpace() {
    return SizedBox(height: this);
  }

  addWSpace() {
    return SizedBox(width: this);
  }
}

extension AppDivider on double {
  Widget appDivider({Color? color}) {
    return Divider(
      thickness: this,
      color: color ?? Colors.white,
    );
  }
}

extension AppValidation on String {
  isValidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}

extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

int formatDayToInt(String weekday) {
  switch (weekday) {
    case "Monday":
      return 0;
    case "Tuesday":
      return 1;
    case "Wednesday":
      return 2;
    case "Thursday":
      return 3;
    case "Friday":
      return 4;
    case "Saturday":
      return 5;
    case "Sunday":
      return 6;
    default:
      return 0;
  }
}

String getDayOfWeek(int weekday) {
  switch (weekday) {
    case 1:
      return 'Monday';
    case 2:
      return 'Tuesday';
    case 3:
      return 'Wednesday';
    case 4:
      return 'Thursday';
    case 5:
      return 'Friday';
    case 6:
      return 'Saturday';
    case 7:
      return 'Sunday';
    default:
      return '';
  }
}

hideKeyBoard(BuildContext context) {
  return FocusScope.of(context).unfocus();
}

printData({required dynamic tittle, dynamic val}) {
  debugPrint(tittle + ":-" + val.toString());
}

extension ReadexPro on String {
  Widget regularReadex({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
          color: fontColor ?? appColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w300,
          decoration: textDecoration ?? TextDecoration.none,
          fontFamily: 'ReadexPro'),
      textAlign: textAlign,
    );
  }

  Widget mediumReadex(
      {Color? fontColor,
      double? fontSize,
      TextDecoration? textDecoration,
      TextOverflow? textOverflow,
      TextAlign? textAlign,
      int? maxLine}) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
          color: fontColor ?? appColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w400,
          decoration: textDecoration ?? TextDecoration.none,
          fontFamily: 'ReadexPro'),
      textAlign: textAlign,
      maxLines: maxLine,
    );
  }

  Widget semiBoldReadex({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
          color: fontColor ?? appColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w600,
          decoration: textDecoration ?? TextDecoration.none,
          fontFamily: 'ReadexPro'),
      textAlign: textAlign,
    );
  }

  Widget boldReadex({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
          color: fontColor ?? appColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w700,
          decoration: textDecoration ?? TextDecoration.none,
          fontFamily: 'ReadexPro'),
      textAlign: textAlign,
    );
  }
}

extension AlegreyaSC on String {
  Widget regularAlegreyaSC({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
    FontWeight? fontWeight,
  }) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
          color: fontColor ?? appColor,
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight ?? FontWeight.w300,
          decoration: textDecoration ?? TextDecoration.none,
          fontFamily: 'AlegreyaSC'),
      textAlign: textAlign,
    );
  }

  Widget mediumAlegreyaSC({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
          color: fontColor ?? appColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w400,
          decoration: textDecoration ?? TextDecoration.none,
          fontFamily: 'AlegreyaSC'),
      textAlign: textAlign,
    );
  }

  Widget boldAlegreyaSC({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
          color: fontColor ?? appColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w700,
          decoration: textDecoration ?? TextDecoration.none,
          fontFamily: 'AlegreyaSC'),
      textAlign: textAlign,
    );
  }
}

extension Roboto on String {
  Widget regularRoboto({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
        color: fontColor ?? appColor,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w300,
        decoration: textDecoration ?? TextDecoration.none,
      ),
      textAlign: textAlign,
    );
  }

  Widget mediumRoboto({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
        color: fontColor ?? appColor,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w400,
        decoration: textDecoration ?? TextDecoration.none,
      ),
      textAlign: textAlign,
    );
  }

  Widget boldRoboto({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
  }) {
    return Text(
      this,
      overflow: textOverflow,
      style: TextStyle(
        color: fontColor ?? appColor,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w700,
        decoration: textDecoration ?? TextDecoration.none,
      ),
      textAlign: textAlign,
    );
  }
}

Widget commonTextFormField(
    {String? hint,
    double? fontSize,
    void Function()? onTap,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool? obSecure,
    TextEditingController? controller,
    AutovalidateMode? autovalidateMode,
    String? Function(String?)? validator}) {
  return SizedBox(
    width: 90.w,
    child: TextFormField(
      controller: controller,
      onTap: onTap ?? () {},
      validator: validator ??
          (value) {
            return null;
          },
      autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
      style: TextStyle(fontSize: fontSize ?? 12.sp),
      obscureText: obSecure ?? false,
      decoration: InputDecoration(
          hintText: hint ?? "",
          hintStyle: TextStyle(fontSize: fontSize ?? 12.sp, color: greyColor),
          focusedBorder: const UnderlineInputBorder(),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon),
    ),
  );
}

Widget appButton(
    {double? width,
    double? height,
    Color? color,
    double? borderRadius,
    String? text,
    required void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width ?? 100.w,
      height: height ?? 6.8.h,
      decoration: BoxDecoration(
        color: color ?? appColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 5.w),
      ),
      child: Center(
        child:
            (text ?? "").boldReadex(fontSize: 12.sp, fontColor: Colors.white),
      ),
    ),
  );
}
