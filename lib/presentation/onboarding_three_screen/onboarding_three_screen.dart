import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 53.v),
                child: Column(children: [
                  SizedBox(height: 24.v),
                  CustomImageView(
                      svgPath: ImageConstant.imgIllustration,
                      height: 285.v,
                      width: 281.h),
                  SizedBox(height: 38.v),
                  Text("lbl_patient_view".tr,
                      style: theme.textTheme.titleLarge),
                  Container(
                      width: 228.h,
                      margin:
                          EdgeInsets.only(left: 26.h, top: 23.v, right: 26.h),
                      child: Text("msg_lorem_ipsum_dolor".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall!
                              .copyWith(height: 1.38))),
                  SizedBox(height: 30.v),
                  SizedBox(
                      height: 6.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 4.44,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blueGray100,
                              dotHeight: 6.v,
                              dotWidth: 6.h))),
                  CustomElevatedButton(
                      text: "lbl_next".tr,
                      margin:
                          EdgeInsets.only(left: 33.h, top: 84.v, right: 34.h),
                      onTap: () {
                        onTapNext(context);
                      }),
                  SizedBox(height: 27.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtButton(context);
                      },
                      child: Text("lbl_skip".tr,
                          style: CustomTextStyles.titleSmallSecondaryContainer))
                ]))));
  }

  /// Navigates to the registerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the registerScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the registerScreen.
  onTapTxtButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
