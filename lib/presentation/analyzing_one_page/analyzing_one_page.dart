import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

class AnalyzingOnePage extends StatelessWidget {
  const AnalyzingOnePage({Key? key}) : super(key: key);

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
                      SizedBox(height: 9.v),
                      Text("lbl_analysis".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 26.v),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19.h, vertical: 28.v),
                              decoration: AppDecoration.fillOnPrimaryContainer
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                              height: 51.adaptSize,
                                              width: 51.adaptSize,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 7.v),
                                              padding: EdgeInsets.all(17.h),
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgPlay)),
                                          Container(
                                              height: 66.v,
                                              width: 230.h,
                                              margin:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgDfdf1,
                                                        height: 58.v,
                                                        width: 222.h,
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            height: 66.v,
                                                            width: 74.h,
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer)))
                                                  ]))
                                        ]),
                                    SizedBox(height: 12.v),
                                    SizedBox(
                                        height: 35.v,
                                        width: 290.h,
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Text("lbl_00_00".tr,
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text("lbl_00_55".tr,
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              SliderTheme(
                                                  data: SliderThemeData(
                                                      trackShape:
                                                          RoundedRectSliderTrackShape(),
                                                      activeTrackColor: theme
                                                          .colorScheme.primary,
                                                      inactiveTrackColor:
                                                          appTheme
                                                              .deepPurple10001,
                                                      thumbColor: theme
                                                          .colorScheme.primary,
                                                      thumbShape:
                                                          RoundSliderThumbShape()),
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
                                            style: CustomTextStyles
                                                .bodySmallBlack900_1)),
                                    Spacer(),
                                    Container(
                                        width: 230.h,
                                        margin: EdgeInsets.only(
                                            left: 31.h, right: 30.h),
                                        child: Text(
                                            "msg_please_analyze_your".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.38))),
                                    CustomElevatedButton(
                                        height: 40.v,
                                        text: "msg_analyze_recording".tr,
                                        margin: EdgeInsets.fromLTRB(
                                            39.h, 106.v, 38.h, 36.v),
                                        onTap: () {
                                          onTapAnalyze(context);
                                        })
                                  ])))
                    ])))));
  }

  /// Navigates to the analyzingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the analyzingScreen.
  onTapAnalyze(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.analyzingScreen);
  }
}
