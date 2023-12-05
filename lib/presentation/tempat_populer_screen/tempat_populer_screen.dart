import '../tempat_populer_screen/widgets/recentlybookedlist_item_widget.dart';import 'controller/tempat_populer_controller.dart';import 'models/recentlybookedlist_item_model.dart';import 'package:flutter/material.dart';import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_leading_image.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_title.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_trailing_image.dart';import 'package:tripmate_ori/widgets/app_bar/custom_app_bar.dart';class TempatPopulerScreen extends GetWidget<TempatPopulerController> {const TempatPopulerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 18.v, right: 24.h), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.tempatPopulerModelObj.value.recentlybookedlistItemList.value.length, itemBuilder: (context, index) {RecentlybookedlistItemModel model = controller.tempatPopulerModelObj.value.recentlybookedlistItemList.value[index]; return RecentlybookedlistItemWidget(model);}))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_recently_booked".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgMenuPrimary, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgVideoCamera, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h), onTap: () {onTapBookmark();})]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the bookmarksScreen when the action is triggered.
onTapBookmark() { Get.toNamed(AppRoutes.bookmarksScreen, ); } 
 }
