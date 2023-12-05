import 'controller/login_controller.dart';import 'package:flutter/material.dart';import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_leading_image.dart';import 'package:tripmate_ori/widgets/app_bar/custom_app_bar.dart';import 'package:tripmate_ori/widgets/custom_elevated_button.dart';import 'package:tripmate_ori/domain/facebookauth/facebook_auth_helper.dart';import 'package:tripmate_ori/domain/facebookauth/facebook_user.dart';import 'package:tripmate_ori/domain/googleauth/google_auth_helper.dart';import 'package:google_sign_in/google_sign_in.dart';class LoginScreen extends GetWidget<LoginController> {const LoginScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 47.v), child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 76.v), Text("lbl_let_s_you_in".tr, style: theme.textTheme.displayMedium), SizedBox(height: 90.v), _buildSocial(), SizedBox(height: 58.v), CustomImageView(imagePath: ImageConstant.imgGroup16, height: 9.v, width: 360.h), SizedBox(height: 57.v), CustomElevatedButton(text: "msg_sign_in_with_password".tr, onPressed: () {onTapSignInWithPassword();}), Spacer(), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_don_t_have_an_account".tr, style: CustomTextStyles.bodyMediumGray50_1)), GestureDetector(onTap: () {onTapTxtSignUp();}, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_sign_up".tr, style: theme.textTheme.titleSmall)))])])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 50.v, leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 11.v, 376.h, 11.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildSocial() { return Column(children: [CustomElevatedButton(height: 60.v, text: "msg_continue_with_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgLogosfacebook, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL16, buttonTextStyle: CustomTextStyles.titleMediumSemiBold, onPressed: () {onTapContinueWithFacebook();}), SizedBox(height: 16.v), CustomElevatedButton(height: 60.v, text: "msg_continue_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 11.h), child: CustomImageView(imagePath: ImageConstant.imgFrame, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL16, buttonTextStyle: CustomTextStyles.titleMediumSemiBold, onPressed: () {onTapContinueWithGoogle();}), SizedBox(height: 16.v), CustomElevatedButton(height: 60.v, text: "msg_continue_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA700, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL16, buttonTextStyle: CustomTextStyles.titleMediumSemiBold)]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Performs a Facebook sign-in and returns a [FacebookUser] object.
///
/// If the sign-in is successful, the [onSuccessFacebookAuthResponse] method is called
/// with the [FacebookUser] object as a parameter.
/// If the sign-in fails, the [onError] callback will be called with the error message.
///
/// Throws an exception if the Facebook sign-in process fails.
onTapContinueWithFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              onSuccessFacebookAuthResponse(facebookUser);
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
/// Navigates to the homeScreenContainerScreen when the action is triggered.
onSuccessFacebookAuthResponse(FacebookUser facebookUser) { Get.offNamed(AppRoutes.homeScreenContainerScreen,); } 
/// Performs a Google sign-in and returns a [GoogleUser] object.
///
/// If the sign-in is successful, the [onSuccessGoogleAuthResponse] method is called
/// with the [GoogleUser] object as a parameter.
/// If the sign-in fails, the [onErrorGoogleAuthResponse] method is called.
///
/// Throws an exception if the Google sign-in process fails.
onTapContinueWithGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            onSuccessGoogleAuthResponse(googleUser);
          } else {
            onErrorGoogleAuthResponse();
          }
        }).catchError((onError) {
            onErrorGoogleAuthResponse();
        });
         } 
/// Navigates to the homeScreenContainerScreen when the action is triggered.
onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser) { Get.offNamed(AppRoutes.homeScreenContainerScreen,); } 
/// Displays an alert dialog when the action is triggered.
/// The dialog box contains a title and a message with the `gagal mengkoneksikan ke google`
onErrorGoogleAuthResponse() { Get.defaultDialog( onConfirm: () => Get.back(), title: "error", middleText: "gagal mengkoneksikan ke google"); } 
/// Navigates to the signInScreen when the action is triggered.
onTapSignInWithPassword() { Get.toNamed(AppRoutes.signInScreen, ); } 
/// Navigates to the signUpBlankScreen when the action is triggered.
onTapTxtSignUp() { Get.toNamed(AppRoutes.signUpBlankScreen, ); } 
 }
