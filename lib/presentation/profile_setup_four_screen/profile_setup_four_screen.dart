import '../profile_setup_four_screen/widgets/chipviewa_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileSetupFourScreen extends StatelessWidget {
  const ProfileSetupFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                child: Column(children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgArrowbackios,
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      alignment: Alignment.centerLeft,
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
                  Text("msg_what_s_your_blood".tr,
                      style: CustomTextStyles.titleLargeBold),
                  SizedBox(height: 10.v),
                  Text("msg_please_select_your".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 89.v),
                  Wrap(
                      runSpacing: 7.v,
                      spacing: 7.h,
                      children: List<Widget>.generate(
                          8, (index) => ChipviewaItemWidget())),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      margin: EdgeInsets.fromLTRB(17.h, 90.v, 16.h, 5.v),
                      onTap: () {
                        onTapContinue(context);
                      })
                ]))));
  }

  /// Navigates to the profileSetupThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileSetupThreeScreen.
  onTapImgArrowbackios(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileSetupThreeScreen);
  }

  /// Navigates to the deviceSearch0ContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the deviceSearch0ContainerScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.deviceSearch0ContainerScreen);
  }
}
