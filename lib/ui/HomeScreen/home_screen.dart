import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:help_harbor/constant/app_color.dart';
import 'package:help_harbor/ui/HomeScreen/home_screen_controller.dart';
import 'package:help_harbor/utils/extension.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: GetBuilder<HomeScreenController>(
            builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: secondaryAppColor,
                        size: 18.sp,
                      ),
                      "San Francisco, CA".semiBoldReadex(
                          fontSize: 13.sp, fontColor: secondaryAppColor),
                      const Spacer(),
                      CircleAvatar(
                        radius: 5.5.w,
                        backgroundColor: appColor.withOpacity(0.1),
                        child: Icon(
                          Icons.search,
                          size: 15.sp,
                        ),
                      ),
                      2.w.addWSpace(),
                      CircleAvatar(
                        radius: 5.5.w,
                        backgroundColor: appColor.withOpacity(0.1),
                        child: Icon(
                          Icons.notifications,
                          size: 15.sp,
                        ),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 2.w),
                  2.h.addHSpace(),
                  Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              controller.selectPoster(value: index);
                            },
                            height: 20.h,
                            autoPlay: true,
                            initialPage: 0,
                            viewportFraction: 1),
                        items: List.generate(4, (index) {
                          return Container(
                            width: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(index == 2 || index == 3
                                        ? "assets/images/poster1.jpg"
                                        : "assets/images/poster 2.png"),
                                    fit: BoxFit.cover)),
                          ).paddingSymmetric(horizontal: 5.w);
                        }),
                      ),
                      1.5.h.addHSpace(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            4,
                            (index) => CircleAvatar(
                                  radius: 3.5,
                                  backgroundColor:
                                      controller.selectedPoster == index
                                          ? appColor
                                          : skyBlue,
                                ).paddingOnly(right: 2.w)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Feature Services"
                          .boldReadex(fontColor: blackColor, fontSize: 12.sp),
                      "View All"
                          .semiBoldReadex(fontColor: appColor, fontSize: 12.sp),
                    ],
                  ).paddingSymmetric(horizontal: 2.w, vertical: 1.h),
                  SizedBox(
                    height: 10.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      padding: EdgeInsets.only(left: 5.w),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 22.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                              color: lightPurple.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 5.h,
                                child: SvgPicture.asset(
                                  "assets/images/svg/service1.svg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              "Cleaning".semiBoldReadex(
                                  fontSize: 12.sp, fontColor: appColor)
                            ],
                          ),
                          //color: lightPurple.withOpacity(0.2),
                        ).paddingOnly(right: 5.w);
                      },
                    ),
                  ),
                  "Recommended for you"
                      .boldReadex(fontColor: blackColor, fontSize: 12.sp)
                      .paddingSymmetric(horizontal: 2.w, vertical: 2.h),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
