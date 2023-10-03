import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/presentation/analyzing_one_page/analyzing_one_page.dart';
import 'package:pasindu_s_application4/presentation/device_search_0_page/device_search_0_page.dart';
import 'package:pasindu_s_application4/presentation/recording_library_page/recording_library_page.dart';
import 'package:pasindu_s_application4/widgets/custom_bottom_bar.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';

class DeviceSearch50Screen extends StatelessWidget {
  DeviceSearch50Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 7.v),
              Text(
                "lbl_connect_device".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 28.v),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50.h,
                    vertical: 65.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 20.h,
                          top: 35.v,
                          right: 22.h,
                        ),
                        padding: EdgeInsets.all(28.h),
                        decoration: AppDecoration.fillDeepPurpleA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder93,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSearch,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 48.v,
                        width: 228.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 228.h,
                                child: Text(
                                  "msg_lorem_ipsum_dolor".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    height: 1.38,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 228.h,
                                child: Text(
                                  "msg_lorem_ipsum_dolor".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    height: 1.38,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomElevatedButton(
                        height: 40.v,
                        text: "lbl_stop".tr,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 29.v,
                          right: 7.h,
                        ),
                          onTap: () {
                            onTapSearchdevice(context);
                          }
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Device:
        return AppRoutes.deviceSearch0Page;
      case BottomBarEnum.Library:
        return AppRoutes.recordingLibraryPage;
      case BottomBarEnum.Analysis:
        return AppRoutes.analyzingOnePage;
      default:
        return "/";
    }
  }
  onTapSearchdevice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.deviceSearch100Screen);
  }
  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.deviceSearch0Page:
        return DeviceSearch0Page();
      case AppRoutes.recordingLibraryPage:
        return RecordingLibraryPage();
      case AppRoutes.analyzingOnePage:
        return AnalyzingOnePage();
      default:
        return DefaultWidget();
    }
  }
}
