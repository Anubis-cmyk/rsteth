import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/presentation/analyzing_one_page/analyzing_one_page.dart';
import 'package:pasindu_s_application4/presentation/device_search_0_page/device_search_0_page.dart';
import 'package:pasindu_s_application4/presentation/recording_instruction_screen/recording_instruction_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_library_page/recording_library_page.dart';
import 'package:pasindu_s_application4/widgets/custom_bottom_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class RecordingScreen extends StatelessWidget {
  RecordingScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
                child: Column(children: [
                  SizedBox(height: 5.v),
                  Text("lbl_record_sound".tr,
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 25.v),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 43.h, vertical: 59.v),
                          decoration: AppDecoration.fillOnPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            SizedBox(height: 23.v),
                            CustomIconButton(
                                height: 56.adaptSize,
                                width: 56.adaptSize,
                                padding: EdgeInsets.all(15.h),
                                decoration:
                                    IconButtonStyleHelper.outlinePrimary,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark)),
                            SizedBox(height: 25.v),
                            Text("msg_rsteth_device_is".tr,
                                style: CustomTextStyles.titleMediumGray700),
                            SizedBox(height: 6.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("lbl_98".tr,
                                      style: CustomTextStyles
                                          .titleSmallInterGray700SemiBold),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgVideocamera,
                                      height: 12.v,
                                      width: 23.h,
                                      margin: EdgeInsets.only(
                                          left: 7.h, top: 2.v, bottom: 2.v))
                                ]),
                            Spacer(),
                            SizedBox(
                                width: 241.h,
                                child: Text("msg_you_can_record_your".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .titleSmallInterPrimary_1
                                        .copyWith(height: 1.32))),
                            CustomElevatedButton(
                                text: "lbl_start_recording".tr,
                                margin: EdgeInsets.only(
                                    left: 14.h, top: 55.v, right: 13.h),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RecordingInstructionScreen()),);
                                })
                          ])))
                ])),
            ));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Device:
        return AppRoutes.deviceSearch0Page;
      case BottomBarEnum.Recording:
        return AppRoutes.recordingScreen;
      case BottomBarEnum.Library:
        return AppRoutes.recordingLibraryPage;
      case BottomBarEnum.Analysis:
        return AppRoutes.analyzingOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.deviceSearch0Page:
        return DeviceSearch0Page();
      case AppRoutes.recordingScreen:
        return RecordingScreen();
      case AppRoutes.recordingLibraryPage:
        return RecordingLibraryPage();
      case AppRoutes.analyzingOnePage:
        return AnalyzingOnePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the recordingInstructionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the recordingInstructionScreen.
  onTapStartrecording(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recordingInstructionScreen);
  }
}
