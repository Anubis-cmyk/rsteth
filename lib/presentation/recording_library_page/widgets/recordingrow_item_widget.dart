import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class RecordingrowItemWidget extends StatelessWidget {
  const RecordingrowItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final ExpansionTileController controller = ExpansionTileController();

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomIconButton(
            height: 33.adaptSize,
            width: 33.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.all(11.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL16,
            child: CustomImageView(
              svgPath: ImageConstant.imgPlayPrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_recording0013_mp3".tr,
                  style: CustomTextStyles.titleSmallInterGray700_1,
                ),
                SizedBox(height: 2.v),
                Text(
                  "msg_22_jan_2023_4_55".tr,
                  style: CustomTextStyles.bodySmall8,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgMorevert,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 6.v,
            ),
          ),

        ],
      ),
    );
  }
}
