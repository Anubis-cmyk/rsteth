import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';

class DeviceSearch0Page extends StatelessWidget {
  const DeviceSearch0Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 9.v),
                    child: Column(children: [
                      SizedBox(height: 7.v),
                      Text("lbl_connect_device".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 28.v),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.h, vertical: 65.v),
                              decoration: AppDecoration.fillOnPrimaryContainer
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 64.v),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgSearch,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize),
                                    Spacer(),
                                    SizedBox(
                                        width: 228.h,
                                        child: Text("msg_lorem_ipsum_dolor".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.38))),
                                    CustomElevatedButton(
                                        height: 40.v,
                                        text: "lbl_search_device".tr,
                                        margin: EdgeInsets.only(
                                            left: 6.h, top: 29.v, right: 7.h),
                                        onTap: () {
                                          onTapSearchdevice(context);
                                        })
                                  ])))
                    ])))));
  }

  /// Navigates to the deviceSearch50Screen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the deviceSearch50Screen.
  onTapSearchdevice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.deviceSearch50Screen);
  }
}
