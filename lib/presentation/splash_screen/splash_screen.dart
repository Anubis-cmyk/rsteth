import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            svgPath: ImageConstant.imgBookmark,
            height: 54.adaptSize,
            width: 54.adaptSize,
          ),
        ),
      ),
    );
  }
}
