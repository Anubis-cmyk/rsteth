import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileSetupOneScreen extends StatelessWidget {
  const ProfileSetupOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 24.v),
                child: Column(children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgArrowbackios,
                      height: 25.v,
                      width: 24.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 21.h),
                      onTap: () {
                        onTapImgArrowbackios(context);
                      }),
                  SizedBox(height: 22.v),
                  SizedBox(
                      height: 6.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 4,
                          effect: ScrollingDotsEffect(
                              spacing: 4.92,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blueGray100,
                              dotHeight: 6.v,
                              dotWidth: 6.h))),
                  SizedBox(height: 24.v),
                  Text("msg_what_s_you_gender".tr,
                      style: CustomTextStyles.titleLargeBold),
                  SizedBox(height: 8.v),
                  SizedBox(
                      width: 171.h,
                      child: Text("msg_to_give_a_better".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall!
                              .copyWith(height: 1.38))),
                  SizedBox(height: 46.v),
                  SizedBox(
                      height: 289.v,
                      width: 345.h,
                      child: Stack(alignment: Alignment.centerRight, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                height: 289.v,
                                width: 174.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 63.h,
                                                  vertical: 16.v),
                                              decoration: AppDecoration
                                                  .fillDeepPurple
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder20),
                                              child: Text("lbl_male".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallInterBlack900))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGroup10,
                                          height: 200.v,
                                          width: 165.h,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(bottom: 28.v))
                                    ]))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                height: 289.v,
                                width: 175.h,
                                child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              height: 289.v,
                                              width: 160.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.deepPurple50,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.h)))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGroup18,
                                          height: 237.v,
                                          width: 164.h,
                                          alignment: Alignment.centerRight),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 56.h, top: 16.v),
                                              child: Text("lbl_female".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallInterBlack900)))
                                    ])))
                      ])),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      margin: EdgeInsets.fromLTRB(37.h, 48.v, 36.h, 5.v),
                      onTap: () {
                        onTapContinue(context);
                      })
                ]))));
  }

  /// Navigates to the registerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the registerScreen.
  onTapImgArrowbackios(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  /// Navigates to the profileSetupTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileSetupTwoScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileSetupTwoScreen);
  }
}
