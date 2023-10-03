import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';

class NoteOneScreen extends StatelessWidget {
  const NoteOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 624.h,
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 47.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 7.v),
              Text(
                "msg_device_settings".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "msg_user_change_device".tr,
                style: CustomTextStyles.headlineSmallPoppinsOnPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
