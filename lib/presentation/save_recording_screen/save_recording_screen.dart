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
import 'package:pasindu_s_application4/widgets/custom_outlined_button.dart';
import 'package:pasindu_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SaveRecordingScreen extends StatelessWidget {
  SaveRecordingScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController startwritingherController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
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
                margin: EdgeInsets.only(left: 15.h, top: 13.v, right: 15.h),
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 12.v),
                decoration: AppDecoration.fillOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.outlinePrimaryTL20,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCheckmark)),
                      SizedBox(height: 7.v),
                      SizedBox(
                          width: 189.h,
                          child: Text("msg_your_recording_is_completed".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumPrimary_1
                                  .copyWith(height: 1.25))),
                      SizedBox(height: 34.v),
                      SizedBox(
                          height: 72.v,
                          width: 318.h,
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgDfdf163x313,
                                    height: 63.v,
                                    width: 313.h,
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: 72.v,
                                        width: 93.h,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme
                                                .onPrimaryContainer)))
                              ])),
                      SizedBox(height: 55.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                                height: 43.adaptSize,
                                width: 43.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 6.v),
                                padding: EdgeInsets.all(12.h),
                                decoration:
                                    IconButtonStyleHelper.fillPrimaryTL21,
                                onTap: () {
                                  onTapBtnMusicone(context);
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgMusic)),
                            CustomIconButton(
                                height: 55.adaptSize,
                                width: 55.adaptSize,
                                margin: EdgeInsets.only(left: 38.h),
                                padding: EdgeInsets.all(18.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgPlay)),
                            CustomIconButton(
                                height: 43.adaptSize,
                                width: 43.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 38.h, top: 6.v, bottom: 6.v),
                                padding: EdgeInsets.all(11.h),
                                decoration:
                                    IconButtonStyleHelper.fillPrimaryTL21,
                                onTap: () {
                                  onTapBtnTrashone(context);
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgTrash))
                          ]),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 7.h, top: 54.v),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgNoteadd,
                                    height: 19.adaptSize,
                                    width: 19.adaptSize),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 4.h, bottom: 2.v),
                                    child: Text("msg_additional_notes".tr,
                                        style: CustomTextStyles
                                            .labelLargeSemiBold)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, top: 4.v),
                                    child: Text("lbl_optional".tr,
                                        style: CustomTextStyles.bodySmall10))
                              ]))),
                      CustomTextFormField(
                          controller: startwritingherController,
                          margin:
                              EdgeInsets.only(left: 9.h, top: 8.v, right: 8.h),
                          hintText: "msg_start_writing_here".tr,
                          hintStyle:
                              CustomTextStyles.bodySmallSecondaryContainer,
                          textInputAction: TextInputAction.done,
                          maxLines: 4,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 7.v),
                          borderDecoration: TextFormFieldStyleHelper
                              .outlineSecondaryContainerTL10,
                          filled: true,
                          fillColor: appTheme.gray3008c),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 8.h, top: 17.v, right: 8.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgAttachfile,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 4.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 6.h, top: 5.v, bottom: 5.v),
                                    child: Text("lbl_attach_files".tr,
                                        style: CustomTextStyles
                                            .labelLargeSemiBold)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 4.h, top: 6.v, bottom: 6.v),
                                    child: Text("lbl_optional".tr,
                                        style: CustomTextStyles.bodySmall10)),
                                Spacer(),
                                CustomOutlinedButton(
                                    height: 26.v,
                                    width: 83.h,
                                    text: "lbl_upload".tr,
                                    buttonStyle:
                                        CustomButtonStyles.outlinePrimary,
                                    buttonTextStyle: CustomTextStyles
                                        .labelMediumRobotoPrimary)
                              ])),
                      SizedBox(height: 21.v),
                      CustomElevatedButton(
                          width: 215.h,
                          text: "lbl_save".tr,
                          onTap: () {
                            onTapSave(context);
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

  /// Navigates to the retryConfirmPopupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the retryConfirmPopupScreen.
  onTapBtnMusicone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.retryConfirmPopupScreen);
  }

  /// Navigates to the deleteConfirmPopupOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the deleteConfirmPopupOneScreen.
  onTapBtnTrashone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.deleteConfirmPopupOneScreen);
  }

  /// Navigates to the savedSuccessPopupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the savedSuccessPopupScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.savedSuccessPopupScreen);
  }
}
