import '../recording_library_page/widgets/recordingrow_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';
import 'package:pasindu_s_application4/widgets/custom_outlined_button.dart';

class RecordingLibraryPage extends StatelessWidget {
  const RecordingLibraryPage({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v),
                    child: Column(children: [
                      Text("lbl_my_recordings".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 29.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.h, vertical: 14.v),
                          decoration: AppDecoration.fillOnPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomIconButton(
                                    height: 33.adaptSize,
                                    width: 33.adaptSize,
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.all(11.h),
                                    decoration:
                                        IconButtonStyleHelper.fillPrimaryTL16,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgPlayPrimary)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.h, bottom: 2.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("msg_recording0015_mp3".tr,
                                              style: CustomTextStyles
                                                  .titleSmallInterGray700_1),
                                          SizedBox(height: 2.v),
                                          Text("msg_22_jan_2023_4_55".tr,
                                              style:
                                                  CustomTextStyles.bodySmall8)
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMorevert,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 7.v, bottom: 6.v))
                              ])),
                      SizedBox(height: 9.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.h, vertical: 14.v),
                          decoration: AppDecoration.fillOnPrimaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                              height: 33.adaptSize,
                                              width: 33.adaptSize,
                                              padding: EdgeInsets.all(7.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillPrimaryTL161,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgPause)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15.h, bottom: 2.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_recording0014_mp3"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleSmallInterGray700_1),
                                                    SizedBox(height: 2.v),
                                                    Text(
                                                        "msg_22_jan_2023_4_55"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodySmall8)
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgMorevert,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 7.v, bottom: 6.v))
                                        ])),
                                SizedBox(height: 19.v),
                                SizedBox(
                                    height: 44.v,
                                    width: 275.h,
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgDfdf163x313,
                                              height: 38.v,
                                              width: 270.h,
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: 44.v,
                                                  width: 80.h,
                                                  decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .onPrimaryContainer)))
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 22.h, top: 4.v, right: 25.h),
                                    child: SliderTheme(
                                        data: SliderThemeData(
                                            trackShape:
                                                RoundedRectSliderTrackShape(),
                                            activeTrackColor:
                                                theme.colorScheme.primary,
                                            inactiveTrackColor:
                                                appTheme.deepPurple10001,
                                            thumbColor:
                                                theme.colorScheme.primary,
                                            thumbShape:
                                                RoundSliderThumbShape()),
                                        child: Slider(
                                            value: 70.07,
                                            min: 0.0,
                                            max: 100.0,
                                            onChanged: (value) {}))),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_00_00".tr,
                                              style:
                                                  CustomTextStyles.bodySmall9),
                                          Text("lbl_00_55".tr,
                                              style:
                                                  CustomTextStyles.bodySmall9)
                                        ])),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        7.h, 16.v, 7.h, 4.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 8.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16.h,
                                                      vertical: 7.v),
                                                  decoration: AppDecoration
                                                      .outlinePrimary3
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgShare,
                                                            height: 14.v,
                                                            width: 15.h),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 7.h),
                                                            child: Text(
                                                                "lbl_share".tr,
                                                                style: CustomTextStyles
                                                                    .labelLargePrimary))
                                                      ]))),
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  text: "lbl_analyze".tr,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 8.h),
                                                  leftIcon: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 7.h),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgNavanalysisPrimary)))),
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  text: "lbl_delete".tr,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h),
                                                  leftIcon: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 7.h),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgTrash)),
                                                  onTap: () {
                                                    onTapDelete(context);
                                                  }))
                                        ]))
                              ])),
                      SizedBox(height: 9.v),
                      Expanded(
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 9.v);
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return RecordingrowItemWidget();
                              }))
                    ])))));
  }

  /// Navigates to the deleteConfirmPopupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the deleteConfirmPopupScreen.
  onTapDelete(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.deleteConfirmPopupScreen);
  }
}
