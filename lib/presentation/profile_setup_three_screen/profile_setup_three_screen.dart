import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileSetupThreeScreen extends StatelessWidget {
  const ProfileSetupThreeScreen({Key? key}) : super(key: key);

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
                      height: 25.adaptSize,
                      width: 25.adaptSize,
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
                              spacing: 5.44,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blueGray100,
                              dotHeight: 6.v,
                              dotWidth: 6.h))),
                  SizedBox(height: 24.v),
                  Text("msg_what_s_your_weight".tr,
                      style: CustomTextStyles.titleLargeBold),
                  SizedBox(height: 10.v),
                  Text("msg_share_your_weight".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 26.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("lbl_66".tr,
                        style: CustomTextStyles.headlineSmallDeeppurpleA200),
                    Padding(
                        padding: EdgeInsets.only(top: 14.v, bottom: 1.v),
                        child: Text("lbl_kg".tr,
                            style: CustomTextStyles.labelLargeDeeppurpleA200))
                  ]),
                  SizedBox(height: 4.v),
                  CustomImageView(
                      svgPath: ImageConstant.imgGroup28,
                      height: 82.v,
                      width: 330.h),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h, top: 3.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Text("lbl_64".tr,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.titleLargeMedium)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Text("lbl_65".tr,
                                    style: CustomTextStyles.titleLargeMedium)),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowdropup,
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                margin: EdgeInsets.only(top: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Text("lbl_67".tr,
                                    style: CustomTextStyles.titleLargeMedium)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Text("lbl_68".tr,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.titleLargeMedium))
                          ])),
                  SizedBox(height: 40.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("lbl_5".tr,
                        style: CustomTextStyles.headlineSmallDeeppurpleA200),
                    Padding(
                        padding: EdgeInsets.only(top: 12.v, bottom: 3.v),
                        child: Text("lbl_feet".tr,
                            style: CustomTextStyles.labelLargeDeeppurpleA200))
                  ]),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 14.h, top: 4.v, right: 14.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 82.v,
                                child: VerticalDivider(
                                    width: 2.h,
                                    thickness: 2.v,
                                    indent: 15.h,
                                    endIndent: 16.h)),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 15.h,
                                        endIndent: 16.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        color: theme.colorScheme.primary))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 15.h,
                                        endIndent: 16.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 24.h,
                                        endIndent: 24.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: SizedBox(
                                    height: 82.v,
                                    child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        indent: 15.h,
                                        endIndent: 16.h)))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(left: 5.h, top: 3.v, right: 5.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Text("lbl_4".tr,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.titleLargeMedium)),
                            Spacer(flex: 49),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Text("lbl_4_5".tr,
                                    style: CustomTextStyles.titleLargeMedium)),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowdropup,
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                margin: EdgeInsets.only(left: 46.h, top: 3.v)),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 45.h, bottom: 10.v),
                                child: Text("lbl_5_5".tr,
                                    style: CustomTextStyles.titleLargeMedium)),
                            Spacer(flex: 50),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Text("lbl_6".tr,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.titleLargeMedium))
                          ])),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      margin: EdgeInsets.fromLTRB(37.h, 21.v, 36.h, 5.v),
                      onTap: () {
                        onTapContinue(context);
                      })
                ]))));
  }

  /// Navigates to the profileSetupTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileSetupTwoScreen.
  onTapImgArrowbackios(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileSetupTwoScreen);
  }

  /// Navigates to the profileSetupFourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileSetupFourScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileSetupFourScreen);
  }
}
