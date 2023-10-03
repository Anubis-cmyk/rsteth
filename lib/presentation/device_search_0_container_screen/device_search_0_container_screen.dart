import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/presentation/analyzing_one_page/analyzing_one_page.dart';
import 'package:pasindu_s_application4/presentation/device_search_0_page/device_search_0_page.dart';
import 'package:pasindu_s_application4/presentation/device_search_100_screen/device_search_100_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_library_page/recording_library_page.dart';
import 'package:pasindu_s_application4/widgets/custom_bottom_bar.dart';

import '../device_search_50_screen/device_search_50_screen.dart';

// ignore_for_file: must_be_immutable
class DeviceSearch0ContainerScreen extends StatelessWidget {
  DeviceSearch0ContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.deviceSearch0Page,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.deviceSearch0Page:
        return DeviceSearch0Page();
      case AppRoutes.deviceSearch50Screen:
        return DeviceSearch50Screen();
      case AppRoutes.deviceSearch100Screen:
        return DeviceSearch100Screen();
      case AppRoutes.recordingLibraryPage:
        return RecordingLibraryPage();
      case AppRoutes.analyzingOnePage:
        return AnalyzingOnePage();
      default:
        return DefaultWidget();
    }
  }
}
