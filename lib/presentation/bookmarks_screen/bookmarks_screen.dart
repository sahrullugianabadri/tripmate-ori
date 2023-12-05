import '../bookmarks_screen/widgets/mybookmarks_item_widget.dart';import 'controller/bookmarks_controller.dart';import 'models/mybookmarks_item_model.dart';import 'package:flutter/material.dart';import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_leading_image.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_title.dart';import 'package:tripmate_ori/widgets/app_bar/appbar_trailing_image.dart';import 'package:tripmate_ori/widgets/app_bar/custom_app_bar.dart';class BookmarksScreen extends GetWidget<BookmarksController> {const BookmarksScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 24.v, right: 24.h), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 281.v, crossAxisCount: 2, mainAxisSpacing: 24.h, crossAxisSpacing: 24.h), physics: BouncingScrollPhysics(), itemCount: controller.bookmarksModelObj.value.mybookmarksItemList.value.length, itemBuilder: (context, index) {MybookmarksItemModel model = controller.bookmarksModelObj.value.mybookmarksItemList.value[index]; return MybookmarksItemWidget(model, onTapImgImage: () {onTapImgImage();});}))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_my_bookmarks".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgMenuWhiteA700, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgGrid, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h))]); } 
/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 

onTapImgImage() { // TODO: implement Actions
 } 
 }
