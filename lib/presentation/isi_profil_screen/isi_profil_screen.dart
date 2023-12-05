import 'controller/isi_profil_controller.dart';import 'package:flutter/material.dart';import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/core/utils/validation_functions.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_leading_image.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_title.dart';import 'package:tripmate_ori/widgets/app_bar/custom_app_bar.dart';import 'package:tripmate_ori/widgets/custom_drop_down.dart';import 'package:tripmate_ori/widgets/custom_elevated_button.dart';import 'package:tripmate_ori/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class IsiProfilScreen extends GetWidget<IsiProfilController> {IsiProfilScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 40.v), child: Column(children: [_buildAvatar(), SizedBox(height: 24.v), _buildFullNameEditText(), SizedBox(height: 24.v), _buildNameEditText(), SizedBox(height: 24.v), _buildDateOfBirthEditText(), SizedBox(height: 24.v), _buildEmailEditText(), SizedBox(height: 24.v), _buildPhoneNumberEditText(), SizedBox(height: 24.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgFavorite, height: 20.adaptSize, width: 20.adaptSize)), hintText: "lbl_gender".tr, items: controller.isiProfilModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);}), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildContinueButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "msg_fill_your_profile".tr)); } 
/// Section Widget
Widget _buildAvatar() { return GestureDetector(onTap: () {onTapAvatar();}, child: SizedBox(height: 140.adaptSize, width: 140.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse, height: 140.adaptSize, width: 140.adaptSize, radius: BorderRadius.circular(70.h), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgEdit, height: 35.adaptSize, width: 35.adaptSize, alignment: Alignment.bottomRight)]))); } 
/// Section Widget
Widget _buildFullNameEditText() { return CustomTextFormField(controller: controller.fullNameEditTextController, hintText: "lbl_full_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}); } 
/// Section Widget
Widget _buildNameEditText() { return CustomTextFormField(controller: controller.nameEditTextController, hintText: "lbl_nickname".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}); } 
/// Section Widget
Widget _buildDateOfBirthEditText() { return CustomTextFormField(controller: controller.dateOfBirthEditTextController, hintText: "lbl_date_of_birth".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgIconlyCurvedCalendar, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildEmailEditText() { return CustomTextFormField(controller: controller.emailEditTextController, hintText: "lbl_email".tr, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkBlueGray100, height: 15.adaptSize, width: 15.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildPhoneNumberEditText() { return CustomTextFormField(controller: controller.phoneNumberEditTextController, hintText: "lbl_phone_number".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.phone, prefix: Padding(padding: EdgeInsets.fromLTRB(20.h, 19.v, 30.h, 19.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 18.v, width: 24.h, margin: EdgeInsets.fromLTRB(20.h, 19.v, 30.h, 19.v)), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 4.67.v, width: 9.33.h)])), prefixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;}, contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v)); } 
/// Section Widget
Widget _buildContinueButton() { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 52.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Requests permission to access the camera and storage, and displays a model
/// sheet for selecting images.
///
/// Throws an error if permission is denied or an error occurs while selecting images.
onTapAvatar() async  { await PermissionManager.askForPermission(Permission.camera);await PermissionManager.askForPermission(Permission.storage);List<String?>? imageList = [];await FileManager().showModelSheetForImage(getImages: (value) async {imageList = value;}); } 
 }
