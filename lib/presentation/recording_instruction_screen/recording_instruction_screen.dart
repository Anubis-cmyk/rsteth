import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/presentation/analyzing_one_page/analyzing_one_page.dart';
import 'package:pasindu_s_application4/presentation/device_search_0_page/device_search_0_page.dart';
import 'package:pasindu_s_application4/presentation/recording_library_page/recording_library_page.dart';
import 'package:pasindu_s_application4/presentation/recording_started_number_one_screen/recording_started_number_one_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_started_number_six_screen/recording_started_number_six_screen.dart';
import 'package:pasindu_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:pasindu_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:pasindu_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class RecordingInstructionScreen extends StatelessWidget {
  RecordingInstructionScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: CustomAppBar(
                leadingWidth: 44.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 12.h, top: 12.v, bottom: 12.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_record_sound".tr)),
            body: Container(
                width: 330.h,
                margin: EdgeInsets.only(left: 15.h, top: 12.v, right: 15.h),
                padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 13.v),
                decoration: AppDecoration.fillOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                      height: 290.v,
                      width: 328.h,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgDepositphotos5,
                            height: 290.v,
                            width: 328.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 95.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 14.h, right: 21.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 12.h,
                                                            vertical: 5.v),
                                                    decoration: AppDecoration
                                                        .fillPrimary
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder16),
                                                    child: Text("lbl_1".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumOnPrimaryContainer)),
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 11.h,
                                                            vertical: 5.v),
                                                    decoration: AppDecoration
                                                        .outlinePrimary1
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder16),
                                                    child: Text("lbl_2".tr,
                                                        style: theme.textTheme
                                                            .titleMedium))
                                              ])),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2.h,
                                                  top: 13.v,
                                                  right: 5.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    10.h,
                                                                vertical: 5.v),
                                                        decoration: AppDecoration
                                                            .outlinePrimary1
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder16),
                                                        child: Text("lbl_3".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium)),
                                                    Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    10.h,
                                                                vertical: 5.v),
                                                        decoration: AppDecoration
                                                            .outlinePrimary1
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder16),
                                                        child: Text("lbl_42".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium))
                                                  ]))),
                                      SizedBox(height: 18.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.h,
                                                    vertical: 5.v),
                                                decoration: AppDecoration
                                                    .outlinePrimary1
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder16),
                                                child: Text("lbl_52".tr,
                                                    style: theme.textTheme
                                                        .titleMedium)),
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.h,
                                                    vertical: 5.v),
                                                decoration: AppDecoration
                                                    .outlinePrimary1
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder16),
                                                child: Text("lbl_62".tr,
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ])
                                    ])))
                      ])),
                  Container(
                      width: 241.h,
                      margin:
                          EdgeInsets.only(left: 43.h, top: 47.v, right: 44.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_move_the_device2".tr,
                                style: CustomTextStyles.titleMediumPrimary),
                            TextSpan(
                                text: "lbl_number_1".tr,
                                style: CustomTextStyles.titleMediumPrimary),
                            TextSpan(
                                text: "msg_area_on_your_chest".tr,
                                style: CustomTextStyles.titleMediumPrimary)
                          ]),
                          textAlign: TextAlign.center)),
                  SizedBox(height: 51.v),
                  Text("msg_tap_to_button_to".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 15.v),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RecordingStartedNumberSixScreen()),);
                      },
                      child: Container(
                          height: 71.adaptSize,
                          width: 71.adaptSize,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(35.h)))),
                  SizedBox(height: 9.v)
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

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the recordingStartedNumberOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the recordingStartedNumberOneScreen.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recordingStartedNumberOneScreen);
  }
}
