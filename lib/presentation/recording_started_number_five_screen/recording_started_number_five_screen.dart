import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/presentation/analyzing_one_page/analyzing_one_page.dart';
import 'package:pasindu_s_application4/presentation/device_search_0_page/device_search_0_page.dart';
import 'package:pasindu_s_application4/presentation/recording_library_page/recording_library_page.dart';
import 'package:pasindu_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:pasindu_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:pasindu_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_bottom_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class RecordingStartedNumberFiveScreen extends StatelessWidget {
  RecordingStartedNumberFiveScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 14.v),
                decoration: AppDecoration.fillOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 290.v,
                          width: 328.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgDepositphotos5,
                                    height: 290.v,
                                    width: 328.h,
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 95.h,
                                            right: 95.h,
                                            bottom: 73.v),
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
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        12.h,
                                                                    vertical:
                                                                        5.v),
                                                            decoration: AppDecoration
                                                                .outlinePrimary1
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder16),
                                                            child: Text(
                                                                "lbl_1".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium)),
                                                        Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        11.h,
                                                                    vertical:
                                                                        5.v),
                                                            decoration: AppDecoration
                                                                .outlinePrimary1
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder16),
                                                            child: Text(
                                                                "lbl_2".tr,
                                                                style: theme
                                                                    .textTheme
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
                                                                        horizontal: 10
                                                                            .h,
                                                                        vertical: 5
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .outlinePrimary1
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder16),
                                                                child: Text(
                                                                    "lbl_3".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium)),
                                                            Container(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 10
                                                                            .h,
                                                                        vertical: 5
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .outlinePrimary1
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder16),
                                                                child: Text(
                                                                    "lbl_42".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium))
                                                          ]))),
                                              SizedBox(height: 18.v),
                                              Row(
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
                                                            .outlinePrimary2
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder16),
                                                        child: Text("lbl_52".tr,
                                                            style: CustomTextStyles
                                                                .titleMediumOnPrimaryContainer)),
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
                                                        child: Text("lbl_62".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium))
                                                  ])
                                            ])))
                              ])),
                      SizedBox(height: 4.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_00_05".tr,
                              style: theme.textTheme.bodyLarge)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 234.h,
                              margin: EdgeInsets.only(
                                  left: 47.h, top: 4.v, right: 46.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_now_old_the_device2".tr,
                                        style: CustomTextStyles
                                            .titleSmallInterPrimary),
                                    TextSpan(
                                        text: "msg_number_5_area_for".tr,
                                        style: CustomTextStyles
                                            .titleSmallInterGray700)
                                  ]),
                                  textAlign: TextAlign.center))),
                      SizedBox(height: 18.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgDfdf163x162,
                            height: 63.v,
                            width: 162.h,
                            margin: EdgeInsets.symmetric(vertical: 11.v)),
                        SizedBox(
                            height: 85.v,
                            child: VerticalDivider(
                                width: 3.h,
                                thickness: 3.v,
                                color: theme.colorScheme.primary))
                      ]),
                      Padding(
                          padding: EdgeInsets.fromLTRB(22.h, 23.v, 54.h, 6.v),
                          child: Row(children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 26.v, bottom: 24.v),
                                child: Text("lbl_00_00_45".tr,
                                    style: CustomTextStyles
                                        .titleMediumBlack900_1)),
                            CustomIconButton(
                                height: 71.adaptSize,
                                width: 71.adaptSize,
                                margin: EdgeInsets.only(left: 34.h),
                                padding: EdgeInsets.all(25.h),
                                decoration:
                                    IconButtonStyleHelper.fillPrimaryTL35,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgIconstop)),
                            CustomImageView(
                                svgPath: ImageConstant.imgRefreshPrimary,
                                height: 24.v,
                                width: 26.h,
                                margin: EdgeInsets.only(
                                    left: 48.h, top: 24.v, bottom: 23.v))
                          ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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
}
