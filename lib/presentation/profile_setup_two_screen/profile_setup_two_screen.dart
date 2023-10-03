import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileSetupTwoScreen extends StatelessWidget {
  const ProfileSetupTwoScreen({Key? key}) : super(key: key);

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
                  Text("msg_how_old_are_you".tr,
                      style: CustomTextStyles.titleLargeBold),
                  SizedBox(height: 10.v),
                  Text("msg_let_s_get_to_know".tr,
                      style: theme.textTheme.bodySmall),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h, top: 116.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin:
                                    EdgeInsets.only(top: 18.v, bottom: 20.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.h, vertical: 23.v),
                                decoration: AppDecoration
                                    .outlineSecondaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Text("lbl_32".tr,
                                    style: theme.textTheme.headlineSmall)),
                            Container(
                                margin:
                                    EdgeInsets.only(top: 18.v, bottom: 20.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.h, vertical: 23.v),
                                decoration: AppDecoration
                                    .outlineSecondaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Text("lbl_33".tr,
                                    style: theme.textTheme.headlineSmall)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 18.h, vertical: 40.v),
                                decoration: AppDecoration.outlinePrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Text("lbl_34".tr,
                                    style: theme.textTheme.headlineMedium)),
                            Container(
                                margin:
                                    EdgeInsets.only(top: 18.v, bottom: 20.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.h, vertical: 23.v),
                                decoration: AppDecoration
                                    .outlineSecondaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Text("lbl_35".tr,
                                    style: theme.textTheme.headlineSmall)),
                            Container(
                                margin:
                                    EdgeInsets.only(top: 18.v, bottom: 20.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.h, vertical: 23.v),
                                decoration: AppDecoration
                                    .outlineSecondaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Text("lbl_36".tr,
                                    style: theme.textTheme.headlineSmall))
                          ])),
                  CustomImageView(
                      svgPath: ImageConstant.imgArrowdropup,
                      height: 32.adaptSize,
                      width: 32.adaptSize),
                  Spacer(),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      margin: EdgeInsets.only(left: 37.h, right: 36.h),
                      onTap: () {
                        onTapContinue(context);
                      })
                ]))));
  }

  /// Navigates to the profileSetupOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileSetupOneScreen.
  onTapImgArrowbackios(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileSetupOneScreen);
  }

  /// Navigates to the profileSetupThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileSetupThreeScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileSetupThreeScreen);
  }
}
