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
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class AnalyzingScreen extends StatelessWidget {
  AnalyzingScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 46.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_graphical_analysis".tr,
                          style: CustomTextStyles.bodySmallBlack900_1)),
                  Container(
                      margin:
                          EdgeInsets.only(left: 43.h, top: 35.v, right: 43.h),
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
                                    svgPath: ImageConstant.imgRefresh,
                                    height: 67.v,
                                    width: 74.h)
                              ])))),
                  SizedBox(height: 27.v),
                  SizedBox(
                      width: 161.h,
                      child: Text("msg_analyzing_this".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall!
                              .copyWith(height: 1.38))),
                  CustomElevatedButton(
                      height: 40.v,
                      text: "lbl_processing".tr,
                      margin:
                          EdgeInsets.only(left: 39.h, top: 19.v, right: 38.h),
                      buttonStyle: CustomButtonStyles.fillSecondaryContainer)
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
