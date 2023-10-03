import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

class DisconnectConfirmPopupScreen extends StatelessWidget {
  const DisconnectConfirmPopupScreen({Key? key}) : super(key: key);

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
                                padding: EdgeInsets.all(8.h),
                                decoration: IconButtonStyleHelper.fillRedA,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgClose)),
                            CustomImageView(
                                svgPath:
                                    ImageConstant.imgCloseSecondarycontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 44.v))
                          ])),
                  SizedBox(height: 21.v),
                  Text("lbl_are_you_sure".tr,
                      style: CustomTextStyles.titleLargeGray700),
                  SizedBox(height: 6.v),
                  SizedBox(
                      width: 209.h,
                      child: Text("msg_do_you_really_want".tr,
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
                                text: "lbl_no".tr,
                                buttonStyle: CustomButtonStyles
                                    .fillSecondaryContainerTL17),
                            CustomElevatedButton(
                                height: 35.v,
                                width: 110.h,
                                text: "lbl_yes".tr,
                                margin: EdgeInsets.only(left: 13.h),
                                buttonStyle: CustomButtonStyles.fillRedA,
                                onTap: () {
                                  onTapYes(context);
                                })
                          ]))
                ]))));
  }

  /// Navigates to the deviceSearch0ContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the deviceSearch0ContainerScreen.
  onTapYes(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.deviceSearch0ContainerScreen);
  }
}
