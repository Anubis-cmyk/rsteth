import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

class RetryConfirmPopupScreen extends StatelessWidget {
  const RetryConfirmPopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 330.h,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 12.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 52.adaptSize,
                                width: 52.adaptSize,
                                margin: EdgeInsets.only(top: 16.v),
                                padding: EdgeInsets.all(15.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgRefreshOnprimarycontainer)),
                            CustomImageView(
                                svgPath:
                                    ImageConstant.imgCloseSecondarycontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 44.v),
                                onTap: () {
                                  onTapImgCloseone(context);
                                })
                          ])),
                  SizedBox(height: 21.v),
                  Text("lbl_are_you_sure".tr,
                      style: CustomTextStyles.titleLargeGray700),
                  Container(
                      width: 244.h,
                      margin:
                          EdgeInsets.only(left: 30.h, top: 6.v, right: 29.h),
                      child: Text("msg_do_you_really_want3".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall!
                              .copyWith(height: 1.33))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(35.h, 42.v, 35.h, 5.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomElevatedButton(
                                height: 35.v,
                                width: 110.h,
                                text: "lbl_cancel".tr,
                                buttonStyle: CustomButtonStyles
                                    .fillSecondaryContainerTL17,
                                onTap: () {
                                  onTapCancel(context);
                                }),
                            CustomElevatedButton(
                                height: 35.v,
                                width: 110.h,
                                text: "lbl_rerecord".tr,
                                margin: EdgeInsets.only(left: 13.h),
                                buttonStyle: CustomButtonStyles.fillPrimaryTL17,
                                onTap: () {
                                  onTapRerecord(context);
                                })
                          ]))
                ]))));
  }

  /// Navigates to the saveRecordingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the saveRecordingScreen.
  onTapImgCloseone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.saveRecordingScreen);
  }

  /// Navigates to the saveRecordingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the saveRecordingScreen.
  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.saveRecordingScreen);
  }

  /// Navigates to the recordingInstructionScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the recordingInstructionScreen.
  onTapRerecord(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recordingInstructionScreen);
  }
}
