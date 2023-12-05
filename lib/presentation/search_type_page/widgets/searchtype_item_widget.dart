import '../controller/search_type_controller.dart';
import '../models/searchtype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tripmate_ori/core/app_export.dart';

// ignore: must_be_immutable
class SearchtypeItemWidget extends StatelessWidget {
  SearchtypeItemWidget(
    this.searchtypeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchtypeItemModel searchtypeItemModelObj;

  var controller = Get.find<SearchTypeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Obx(
              () => Text(
                searchtypeItemModelObj.amsterdamNetherlands!.value,
                style: CustomTextStyles.titleMediumGray40001,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAutoLayoutHorizontal,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(left: 152.h),
          ),
        ],
      ),
    );
  }
}
