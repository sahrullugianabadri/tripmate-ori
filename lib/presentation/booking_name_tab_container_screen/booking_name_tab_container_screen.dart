import 'controller/booking_name_tab_container_controller.dart';import 'package:flutter/material.dart';import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/booking_name_page/booking_name_page.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_leading_image.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_title.dart';import 'package:tripmate_ori/widgets/app_bar/custom_app_bar.dart';class BookingNameTabContainerScreen extends GetWidget<BookingNameTabContainerController> {const BookingNameTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 28.v), _buildTabview(), SizedBox(height: 764.v, child: TabBarView(controller: controller.tabviewController, children: [BookingNamePage(), BookingNamePage(), BookingNamePage()]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "msg_name_of_reservation".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildTabview() { return Container(height: 38.v, width: 380.h, child: TabBar(controller: controller.tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.whiteA700, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: theme.colorScheme.primary, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicator: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(19.h)), tabs: [Tab(child: Text("lbl_mr".tr)), Tab(child: Text("lbl_mrs".tr)), Tab(child: Text("lbl_ms".tr))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
