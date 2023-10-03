import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 535.h,
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
                "lbl_login_all".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_user_login".tr,
                style: CustomTextStyles.headlineSmallPoppinsOnPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
