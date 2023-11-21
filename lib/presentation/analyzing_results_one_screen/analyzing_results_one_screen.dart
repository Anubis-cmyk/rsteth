import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/presentation/analyzing_one_page/analyzing_one_page.dart';
import 'package:pasindu_s_application4/presentation/device_search_0_page/device_search_0_page.dart';
import 'package:pasindu_s_application4/presentation/recording_instruction_screen/recording_instruction_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_library_page/recording_library_page.dart';
import 'package:pasindu_s_application4/presentation/recording_screen/recording_screen.dart';
import 'package:pasindu_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:pasindu_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:pasindu_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_bottom_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_checkbox_button.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class AnalyzingResultsOneScreen extends StatelessWidget {
  AnalyzingResultsOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  bool englishtextTwo = false;

  bool englishtexttwo = false;

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
                title: AppbarTitle(text: "lbl_analysis".tr)),
            body: Container(
                width: 330.h,
                margin: EdgeInsets.only(left: 15.h, top: 12.v, right: 15.h),
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v),
                decoration: AppDecoration.fillOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 8.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomIconButton(
                        height: 51.adaptSize,
                        width: 51.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 7.v),
                        padding: EdgeInsets.all(17.h),
                        child: CustomImageView(svgPath: ImageConstant.imgPlay)),
                    Container(
                        height: 66.v,
                        width: 230.h,
                        margin: EdgeInsets.only(left: 8.h),
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgDfdf1,
                              height: 58.v,
                              width: 222.h,
                              alignment: Alignment.centerLeft),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: 66.v,
                                  width: 74.h,
                                  decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme.onPrimaryContainer)))
                        ]))
                  ]),
                  SizedBox(height: 12.v),
                  SizedBox(
                      height: 35.v,
                      width: 290.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("lbl_00_00".tr,
                                style: theme.textTheme.bodySmall)),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Text("lbl_00_55".tr,
                                style: theme.textTheme.bodySmall)),
                        SliderTheme(
                            data: SliderThemeData(
                                trackShape: RoundedRectSliderTrackShape(),
                                activeTrackColor: theme.colorScheme.primary,
                                inactiveTrackColor: appTheme.deepPurple10001,
                                thumbColor: theme.colorScheme.primary,
                                thumbShape: RoundSliderThumbShape()),
                            child: Slider(
                                value: 70.07,
                                min: 0.0,
                                max: 100.0,
                                onChanged: (value) {}))
                      ])),
                  SizedBox(height: 42.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 5.v, bottom: 2.v),
                            child: Text("msg_graphical_analysis".tr,
                                style: CustomTextStyles.bodySmallBlack900_1)),
                        CustomElevatedButton(
                            height: 23.v,
                            width: 66.h,
                            text: "lbl_filter".tr,
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 7.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgFilterIcon)),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL11,
                            buttonTextStyle: theme.textTheme.labelMedium!,
                            onTap: () {
                              onTapFilter(context);
                            })
                      ]),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_lorem_vs_ipsum".tr,
                          style: CustomTextStyles.bodySmall10)),
                  SizedBox(height: 12.v),
                  SizedBox(
                      height: 218.v,
                      width: 286.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                                height: 27.v,
                                width: 261.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                              width: 257.h,
                                              child: Divider(
                                                  color: appTheme.gray700))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Container(
                                                              height: 7.v,
                                                              width: 1.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          1.h),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .gray700))),
                                                      SizedBox(height: 10.v),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_0".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmall8))
                                                    ]),
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Container(
                                                              height: 7.v,
                                                              width: 1.h,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .gray700))),
                                                      SizedBox(height: 10.v),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_1".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmall8))
                                                    ]),
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Container(
                                                              height: 7.v,
                                                              width: 1.h,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .gray700))),
                                                      SizedBox(height: 10.v),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_2".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmall8))
                                                    ]),
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Container(
                                                              height: 7.v,
                                                              width: 1.h,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .gray700))),
                                                      SizedBox(height: 10.v),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_3".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmall8))
                                                    ])
                                              ]))
                                    ]))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Row(children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_1000".tr,
                                              style:
                                                  CustomTextStyles.bodySmall8),
                                          Container(
                                              height: 1.v,
                                              width: 4.h,
                                              margin: EdgeInsets.only(
                                                  left: 3.h,
                                                  top: 4.v,
                                                  bottom: 4.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray700))
                                        ]),
                                    SizedBox(height: 31.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("lbl_750".tr,
                                              style:
                                                  CustomTextStyles.bodySmall8),
                                          Container(
                                              height: 1.v,
                                              width: 4.h,
                                              margin: EdgeInsets.only(
                                                  left: 3.h, top: 8.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray700))
                                        ]),
                                    SizedBox(height: 36.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("lbl_500".tr,
                                              style:
                                                  CustomTextStyles.bodySmall8),
                                          Container(
                                              height: 1.v,
                                              width: 4.h,
                                              margin: EdgeInsets.only(
                                                  left: 3.h, top: 8.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray700))
                                        ]),
                                    SizedBox(height: 36.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("lbl_250".tr,
                                              style:
                                                  CustomTextStyles.bodySmall8),
                                          Container(
                                              height: 1.v,
                                              width: 4.h,
                                              margin: EdgeInsets.only(
                                                  left: 3.h, top: 8.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray700))
                                        ]),
                                    SizedBox(height: 36.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("lbl_0".tr,
                                              style:
                                                  CustomTextStyles.bodySmall8),
                                          Container(
                                              height: 1.v,
                                              width: 4.h,
                                              margin: EdgeInsets.only(
                                                  left: 3.h, top: 8.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray700))
                                        ])
                                  ]),
                              SizedBox(
                                  height: 192.v,
                                  child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.gray700,
                                      indent: 4.h,
                                      endIndent: 1.h))
                            ])),
                        CustomImageView(
                            svgPath: ImageConstant.imgVector,
                            height: 158.v,
                            width: 257.h,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 1.h)),
                        CustomImageView(
                            svgPath: ImageConstant.imgVectorPrimary,
                            height: 182.v,
                            width: 257.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 8.v, right: 1.h))
                      ])),
                  SizedBox(height: 17.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomCheckboxButton(
                        text: "lbl_lorem_ipsum".tr,
                        value: englishtextTwo,
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        onChange: (value) {
                          englishtextTwo = value;
                        }),
                    CustomCheckboxButton(
                        text: "lbl_lorem_ipsum".tr,
                        value: englishtexttwo,
                        margin: EdgeInsets.only(left: 22.h),
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        onChange: (value) {
                          englishtexttwo = value;
                        })
                  ]),
                  CustomElevatedButton(
                      height: 40.v,
                      text: "lbl_retry".tr,
                      margin:
                          EdgeInsets.only(left: 39.h, top: 28.v, right: 38.h),
                      onTap: () {
                        onTapRetry(context);
                      })
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
        return RecordingInstructionScreen();
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

  /// Navigates to the analyzingResultsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the analyzingResultsScreen.
  onTapFilter(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.analyzingResultsScreen);
  }

  /// Navigates to the analyzingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the analyzingScreen.
  onTapRetry(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.analyzingScreen);
  }
}
