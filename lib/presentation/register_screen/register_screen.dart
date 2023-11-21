import 'package:flutter/material.dart';
import 'package:pasindu_s_application4/core/app_export.dart';
import 'package:pasindu_s_application4/widgets/custom_elevated_button.dart';
import 'package:pasindu_s_application4/widgets/custom_icon_button.dart';
import 'package:pasindu_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 36.h, vertical: 37.v),
                    child: Column(children: [
                      CustomIconButton(
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgImage)),
                      SizedBox(height: 25.v),
                      Text("lbl_sign_up".tr,
                          style: CustomTextStyles.headlineSmallBold),
                      SizedBox(height: 5.v),
                      Text("msg_create_a_new_account".tr,
                          style: CustomTextStyles.bodySmallBlack900_1),
                      SizedBox(height: 42.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_email".tr,
                              style: CustomTextStyles.bodySmallBlack900_1)),
                      SizedBox(height: 6.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "msg_example_gmail_com".tr,
                          textInputType: TextInputType.emailAddress,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 16.v)),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_password".tr,
                              style: CustomTextStyles.bodySmallBlack900_1)),
                      SizedBox(height: 6.v),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: "msg_8_symbols_at_least".tr,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 15.v, 18.h, 15.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgVisibility)),
                          suffixConstraints: BoxConstraints(maxHeight: 45.v),
                          obscureText: true),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("msg_confirm_password".tr,
                              style: CustomTextStyles.bodySmallBlack900_1)),
                      SizedBox(height: 6.v),
                      CustomTextFormField(
                          controller: confirmpasswordController,
                          hintText: "msg_re_enter_your_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(12.h, 15.v, 18.h, 15.v),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgVisibility)),
                          suffixConstraints: BoxConstraints(maxHeight: 45.v),
                          obscureText: true),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                          text: "lbl_continue".tr,
                          onTap: () {
                            onTapContinue(context);
                          }),
                      SizedBox(height: 62.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
                                child: SizedBox(
                                    width: 97.h,
                                   )),
                            Text("lbl_or_sign_in_with".tr,
                                style: theme.textTheme.bodySmall),
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
                                child: SizedBox(
                                    width: 96.h,))
                          ]),
                      SizedBox(height: 14.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGoogle,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            CustomImageView(
                                svgPath: ImageConstant.imgFacebook,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 23.h)),
                            CustomImageView(
                                svgPath: ImageConstant.imgFire,
                                height: 23.v,
                                width: 20.h,
                                margin: EdgeInsets.only(left: 23.h))
                          ]),
                      SizedBox(height: 52.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtAlreadyhavean(context);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_already_have_an2".tr,
                                    style: CustomTextStyles.bodySmallBlack900),
                                TextSpan(
                                    text: "lbl_login".tr,
                                    style: CustomTextStyles
                                        .titleSmallInterPrimaryBold)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 9.v)
                    ])))));
  }

  /// Navigates to the profileSetupOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileSetupOneScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileSetupOneScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
