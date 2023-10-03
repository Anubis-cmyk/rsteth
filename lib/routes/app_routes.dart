import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/presentation/device_search_0_container_screen/device_search_0_container_screen.dart';
import 'package:pasindu_s_application4/presentation/note_screen/note_screen.dart';
import 'package:pasindu_s_application4/presentation/splash_screen/splash_screen.dart';
import 'package:pasindu_s_application4/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:pasindu_s_application4/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:pasindu_s_application4/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:pasindu_s_application4/presentation/register_screen/register_screen.dart';
import 'package:pasindu_s_application4/presentation/profile_setup_one_screen/profile_setup_one_screen.dart';
import 'package:pasindu_s_application4/presentation/profile_setup_two_screen/profile_setup_two_screen.dart';
import 'package:pasindu_s_application4/presentation/profile_setup_three_screen/profile_setup_three_screen.dart';
import 'package:pasindu_s_application4/presentation/profile_setup_four_screen/profile_setup_four_screen.dart';
import 'package:pasindu_s_application4/presentation/login_screen/login_screen.dart';
import 'package:pasindu_s_application4/presentation/note_one_screen/note_one_screen.dart';
import 'package:pasindu_s_application4/presentation/device_search_50_screen/device_search_50_screen.dart';
import 'package:pasindu_s_application4/presentation/device_search_100_screen/device_search_100_screen.dart';
import 'package:pasindu_s_application4/presentation/device_settings_screen/device_settings_screen.dart';
import 'package:pasindu_s_application4/presentation/analyzing_screen/analyzing_screen.dart';
import 'package:pasindu_s_application4/presentation/analyzing_results_one_screen/analyzing_results_one_screen.dart';
import 'package:pasindu_s_application4/presentation/analyzing_results_screen/analyzing_results_screen.dart';
import 'package:pasindu_s_application4/presentation/disconnect_confirm_popup_screen/disconnect_confirm_popup_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_screen/recording_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_instruction_screen/recording_instruction_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_started_number_one_screen/recording_started_number_one_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_started_number_two_screen/recording_started_number_two_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_started_number_three_screen/recording_started_number_three_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_started_number_four_screen/recording_started_number_four_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_started_number_five_screen/recording_started_number_five_screen.dart';
import 'package:pasindu_s_application4/presentation/recording_started_number_six_screen/recording_started_number_six_screen.dart';
import 'package:pasindu_s_application4/presentation/save_recording_screen/save_recording_screen.dart';
import 'package:pasindu_s_application4/presentation/delete_confirm_popup_screen/delete_confirm_popup_screen.dart';
import 'package:pasindu_s_application4/presentation/delete_success_popup_screen/delete_success_popup_screen.dart';
import 'package:pasindu_s_application4/presentation/delete_confirm_popup_one_screen/delete_confirm_popup_one_screen.dart';
import 'package:pasindu_s_application4/presentation/delete_success_popup_one_screen/delete_success_popup_one_screen.dart';
import 'package:pasindu_s_application4/presentation/retry_confirm_popup_screen/retry_confirm_popup_screen.dart';
import 'package:pasindu_s_application4/presentation/saved_success_popup_screen/saved_success_popup_screen.dart';
import 'package:pasindu_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String deviceSearch0Page = '/device_search_0_page';

  static const String deviceSearch0ContainerScreen =
      '/device_search_0_container_screen';

  static const String noteScreen = '/note_screen';

  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String registerScreen = '/register_screen';

  static const String profileSetupOneScreen = '/profile_setup_one_screen';

  static const String profileSetupTwoScreen = '/profile_setup_two_screen';

  static const String profileSetupThreeScreen = '/profile_setup_three_screen';

  static const String profileSetupFourScreen = '/profile_setup_four_screen';

  static const String loginScreen = '/login_screen';

  static const String noteOneScreen = '/note_one_screen';

  static const String deviceSearch50Screen = '/device_search_50_screen';

  static const String deviceSearch100Screen = '/device_search_100_screen';

  static const String deviceSettingsScreen = '/device_settings_screen';

  static const String analyzingOnePage = '/analyzing_one_page';

  static const String analyzingScreen = '/analyzing_screen';

  static const String analyzingResultsOneScreen =
      '/analyzing_results_one_screen';

  static const String analyzingResultsScreen = '/analyzing_results_screen';

  static const String disconnectConfirmPopupScreen =
      '/disconnect_confirm_popup_screen';

  static const String recordingScreen = '/recording_screen';

  static const String recordingInstructionScreen =
      '/recording_instruction_screen';

  static const String recordingStartedNumberOneScreen =
      '/recording_started_number_one_screen';

  static const String recordingStartedNumberTwoScreen =
      '/recording_started_number_two_screen';

  static const String recordingStartedNumberThreeScreen =
      '/recording_started_number_three_screen';

  static const String recordingStartedNumberFourScreen =
      '/recording_started_number_four_screen';

  static const String recordingStartedNumberFiveScreen =
      '/recording_started_number_five_screen';

  static const String recordingStartedNumberSixScreen =
      '/recording_started_number_six_screen';

  static const String saveRecordingScreen = '/save_recording_screen';

  static const String recordingLibraryPage = '/recording_library_page';

  static const String deleteConfirmPopupScreen = '/delete_confirm_popup_screen';

  static const String deleteSuccessPopupScreen = '/delete_success_popup_screen';

  static const String deleteConfirmPopupOneScreen =
      '/delete_confirm_popup_one_screen';

  static const String deleteSuccessPopupOneScreen =
      '/delete_success_popup_one_screen';

  static const String retryConfirmPopupScreen = '/retry_confirm_popup_screen';

  static const String savedSuccessPopupScreen = '/saved_success_popup_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    deviceSearch0ContainerScreen: (context) => DeviceSearch0ContainerScreen(),
    noteScreen: (context) => NoteScreen(),
    splashScreen: (context) => SplashScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    registerScreen: (context) => RegisterScreen(),
    profileSetupOneScreen: (context) => ProfileSetupOneScreen(),
    profileSetupTwoScreen: (context) => ProfileSetupTwoScreen(),
    profileSetupThreeScreen: (context) => ProfileSetupThreeScreen(),
    profileSetupFourScreen: (context) => ProfileSetupFourScreen(),
    loginScreen: (context) => LoginScreen(),
    noteOneScreen: (context) => NoteOneScreen(),
    deviceSearch50Screen: (context) => DeviceSearch50Screen(),
    deviceSearch100Screen: (context) => DeviceSearch100Screen(),
    deviceSettingsScreen: (context) => DeviceSettingsScreen(),
    analyzingScreen: (context) => AnalyzingScreen(),
    analyzingResultsOneScreen: (context) => AnalyzingResultsOneScreen(),
    analyzingResultsScreen: (context) => AnalyzingResultsScreen(),
    disconnectConfirmPopupScreen: (context) => DisconnectConfirmPopupScreen(),
    recordingScreen: (context) => RecordingScreen(),
    recordingInstructionScreen: (context) => RecordingInstructionScreen(),
    recordingStartedNumberOneScreen: (context) =>
        RecordingStartedNumberOneScreen(),
    recordingStartedNumberTwoScreen: (context) =>
        RecordingStartedNumberTwoScreen(),
    recordingStartedNumberThreeScreen: (context) =>
        RecordingStartedNumberThreeScreen(),
    recordingStartedNumberFourScreen: (context) =>
        RecordingStartedNumberFourScreen(),
    recordingStartedNumberFiveScreen: (context) =>
        RecordingStartedNumberFiveScreen(),
    recordingStartedNumberSixScreen: (context) =>
        RecordingStartedNumberSixScreen(),
    saveRecordingScreen: (context) => SaveRecordingScreen(),
    deleteConfirmPopupScreen: (context) => DeleteConfirmPopupScreen(),
    deleteSuccessPopupScreen: (context) => DeleteSuccessPopupScreen(),
    deleteConfirmPopupOneScreen: (context) => DeleteConfirmPopupOneScreen(),
    deleteSuccessPopupOneScreen: (context) => DeleteSuccessPopupOneScreen(),
    retryConfirmPopupScreen: (context) => RetryConfirmPopupScreen(),
    savedSuccessPopupScreen: (context) => SavedSuccessPopupScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
