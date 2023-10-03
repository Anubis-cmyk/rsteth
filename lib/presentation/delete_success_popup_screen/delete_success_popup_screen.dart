import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';

class DeleteSuccessPopupScreen extends StatelessWidget {
  const DeleteSuccessPopupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 330.h,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
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
                      decoration: IconButtonStyleHelper.fillRedA,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCheckmarkOnprimarycontainer,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgCloseSecondarycontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 45.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.v),
              Text(
                "lbl_done".tr,
                style: CustomTextStyles.titleLargeGray700,
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_successfully_deleted".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 36.v),
              CustomElevatedButton(
                height: 35.v,
                width: 110.h,
                text: "lbl_ok".tr,
                buttonStyle: CustomButtonStyles.fillRedA,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
