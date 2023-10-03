import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

class SavedSuccessPopupScreen extends StatelessWidget {
  const SavedSuccessPopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 330.h,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 11.v),
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
                                margin: EdgeInsets.only(top: 17.v),
                                padding: EdgeInsets.all(16.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgCheckmarkOnprimarycontainer)),
                            CustomImageView(
                                svgPath:
                                    ImageConstant.imgCloseSecondarycontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 45.v),
                                onTap: () {
                                  onTapImgCloseone(context);
                                })
                          ])),
                  SizedBox(height: 22.v),
                  Text("lbl_done".tr,
                      style: CustomTextStyles.titleLargeGray700),
                  SizedBox(height: 10.v),
                  Text("msg_successfully_saved".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 36.v),
                  CustomElevatedButton(
                      height: 35.v,
                      width: 152.h,
                      text: "lbl_view_recordings".tr,
                      buttonStyle: CustomButtonStyles.fillPrimaryTL17),
                  SizedBox(height: 5.v)
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
}
