import '../controller/notifikasi_controller.dart';
import '../models/sectionlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tripmate_ori/core/app_export.dart';

// ignore: must_be_immutable
class SectionlistItemWidget extends StatelessWidget {
  SectionlistItemWidget(
    this.sectionlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SectionlistItemModel sectionlistItemModelObj;

  var controller = Get.find<NotifikasiController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClockPrimary,
            height: 80.v,
            width: 83.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_payment_successful".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  "msg_laluna_hotel_booking".tr,
                  style: CustomTextStyles.titleSmallGray40001,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
