import 'controller/notification_settings_controller.dart';import 'package:flutter/material.dart';import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_leading_image.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_title.dart';import 'package:tripmate_ori/widgets/app_bar/custom_app_bar.dart';import 'package:tripmate_ori/widgets/custom_switch.dart';class NotificationSettingsScreen extends GetWidget<NotificationSettingsController> {const NotificationSettingsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [_buildAutoLayoutHorizontal1(), SizedBox(height: 31.v), _buildAutoLayoutHorizontal2(), SizedBox(height: 31.v), _buildAutoLayoutHorizontal3(), SizedBox(height: 31.v), _buildAutoLayoutHorizontal4(), SizedBox(height: 30.v), _buildAutoLayoutHorizontal5(), SizedBox(height: 31.v), _buildAutoLayoutHorizontal6(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_notifications".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal1() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_general_notification".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch.value, onChange: (value) {controller.isSelectedSwitch.value = value;}))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal2() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_sound".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch1.value, onChange: (value) {controller.isSelectedSwitch1.value = value;}))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal3() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_vibrate".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch2.value, onChange: (value) {controller.isSelectedSwitch2.value = value;}))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal4() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("lbl_app_updates".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch3.value, onChange: (value) {controller.isSelectedSwitch3.value = value;}))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal5() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_new_service_available".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch4.value, onChange: (value) {controller.isSelectedSwitch4.value = value;}))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal6() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("msg_new_tips_available".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch5.value, onChange: (value) {controller.isSelectedSwitch5.value = value;}))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
