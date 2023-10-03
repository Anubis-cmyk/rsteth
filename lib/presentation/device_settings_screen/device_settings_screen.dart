import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/presentation/analyzing_one_page/analyzing_one_page.dart';
import 'package:pasindu_s_application4/presentation/device_search_0_page/device_search_0_page.dart';
import 'package:pasindu_s_application4/presentation/recording_library_page/recording_library_page.dart';
import 'package:pasindu_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:pasindu_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:pasindu_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_bottom_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class DeviceSettingsScreen extends StatelessWidget {
  DeviceSettingsScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl_device_settings".tr)),
            body: Container(
                width: 330.h,
                margin: EdgeInsets.only(left: 15.h, top: 12.v, right: 15.h),
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 30.v),
                decoration: AppDecoration.fillOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.h),
                      padding: EdgeInsets.all(31.h),
                      decoration: AppDecoration.fillDeepPurpleA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder102),
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: theme.colorScheme.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder70),
                          child: Container(
                              height: 140.adaptSize,
                              width: 140.adaptSize,
                              padding: EdgeInsets.all(15.h),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder70),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSearch,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    alignment: Alignment.center),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: 45.v,
                                    width: 43.h)
                              ])))),
                  SizedBox(height: 14.v),
                  Text("lbl_rsteth".tr,
                      style: CustomTextStyles.titleLargeRegular),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h, top: 40.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("msg_physical_address".tr,
                                style: CustomTextStyles.bodySmallBlack900_1),
                            Text("msg_00_11_22_33_ff_ee".tr,
                                style: theme.textTheme.bodySmall)
                          ])),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h, top: 22.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("lbl_battery_level".tr,
                                    style:
                                        CustomTextStyles.bodySmallBlack900_1)),
                            Text("lbl_98".tr, style: theme.textTheme.bodySmall)
                          ])),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h, top: 21.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_volume".tr,
                                style: CustomTextStyles.bodySmallBlack900_1),
                            Text("lbl_76".tr, style: theme.textTheme.bodySmall)
                          ])),
                  SizedBox(height: 10.v),
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
                          onChanged: (value) {})),
                  CustomElevatedButton(
                      height: 40.v,
                      text: "msg_disconnect_device".tr,
                      margin: EdgeInsets.fromLTRB(36.h, 36.v, 35.h, 5.v),
                      onTap: () {
                        onTapDisconnect(context);
                      })
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

  /// Navigates to the disconnectConfirmPopupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the disconnectConfirmPopupScreen.
  onTapDisconnect(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.disconnectConfirmPopupScreen);
  }
}
