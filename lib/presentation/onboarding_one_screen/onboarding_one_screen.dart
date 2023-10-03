import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 53.v),
                child: Column(children: [
                  SizedBox(height: 17.v),
                  CustomImageView(
                      svgPath: ImageConstant.imgObjects,
                      height: 290.v,
                      width: 307.h),
                  SizedBox(height: 40.v),
                  Text("lbl_doctor_view".tr, style: theme.textTheme.titleLarge),
                  Container(
                      width: 228.h,
                      margin:
                          EdgeInsets.only(left: 40.h, top: 23.v, right: 41.h),
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
                              spacing: 4.92,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blueGray100,
                              dotHeight: 6.v,
                              dotWidth: 6.h))),
                  SizedBox(height: 84.v),
                  CustomElevatedButton(
                      width: 215.h,
                      text: "lbl_next".tr,
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

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the onboardingTwoScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingTwoScreen);
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
