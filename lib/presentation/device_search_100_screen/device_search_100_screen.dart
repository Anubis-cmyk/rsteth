import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/presentation/analyzing_one_page/analyzing_one_page.dart';
import 'package:pasindu_s_application4/presentation/device_search_0_page/device_search_0_page.dart';
import 'package:pasindu_s_application4/presentation/recording_library_page/recording_library_page.dart';
import 'package:pasindu_s_application4/widgets/custom_bottom_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DeviceSearch100Screen extends StatelessWidget {
  DeviceSearch100Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 7.v),
                  Text("lbl_connect_device".tr,
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 28.v),
                  Container(
                      width: 330.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 41.h, vertical: 37.v),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                height: 272.v,
                                width: 239.h,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(left: 8.h),
                                              padding: EdgeInsets.all(21.h),
                                              decoration: AppDecoration
                                                  .fillDeeppurple100
                                                  .copyWith(
                                                      borderRadius: BorderRadiusStyle
                                                          .roundedBorder115),
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 1.h),
                                                  padding: EdgeInsets.all(28.h),
                                                  decoration: AppDecoration
                                                      .fillDeepPurpleA
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder93),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant.imgSearch,
                                                      height: 20.adaptSize,
                                                      width: 20.adaptSize)))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapDevicefound(context);
                                              },
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(
                                                        width: 65.h,
                                                        child: Text(
                                                            "msg_rsteth_00_11_22_33_ff_ee"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: CustomTextStyles
                                                                .bodySmallRoboto
                                                                .copyWith(
                                                                    height:
                                                                        1.13))),
                                                    SizedBox(height: 2.v),
                                                    CustomIconButton(
                                                        height: 70.adaptSize,
                                                        width: 70.adaptSize,
                                                        padding: EdgeInsets.all(
                                                            18.h),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillPrimaryTL35,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLightbulb))
                                                  ])))
                                    ]))),
                        Container(
                            width: 228.h,
                            margin: EdgeInsets.only(
                                left: 9.h, top: 93.v, right: 9.h),
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall!
                                    .copyWith(height: 1.38))),
                        CustomElevatedButton(
                            height: 40.v,
                            text: "msg_1_device_s_found".tr,
                            margin: EdgeInsets.fromLTRB(17.h, 29.v, 16.h, 28.v),
                            onTap: () {
                              onTapdevicesfound(context);
                            })
                      ]))
                ])),
            ));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Device:
        return AppRoutes.deviceSearch0Page;
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
      case AppRoutes.recordingLibraryPage:
        return RecordingLibraryPage();
      case AppRoutes.analyzingOnePage:
        return AnalyzingOnePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the deviceSettingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the deviceSettingsScreen.
  onTapDevicefound(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recordingLibraryPage);
  }

  /// Navigates to the deviceSettingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the deviceSettingsScreen.
  onTapdevicesfound(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recordingLibraryPage);
  }
}
