import '../controller/lupa_password_controller.dart';
import '../models/forgotpassword_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tripmate_ori/core/app_export.dart';

// ignore: must_be_immutable
class ForgotpasswordItemWidget extends StatelessWidget {
  ForgotpasswordItemWidget(
    this.forgotpasswordItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ForgotpasswordItemModel forgotpasswordItemModelObj;

  var controller = Get.find<LupaPasswordController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(21.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Container(
            height: 80.adaptSize,
            width: 80.adaptSize,
            padding: EdgeInsets.all(26.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: forgotpasswordItemModelObj.viaSMS!.value,
                height: 26.adaptSize,
                width: 26.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 15.v,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    forgotpasswordItemModelObj.viaSMS1!.value,
                    style: CustomTextStyles.titleSmallGray400,
                  ),
                ),
                SizedBox(height: 11.v),
                Obx(
                  () => Text(
                    forgotpasswordItemModelObj
                        .oneHundredElevenThousandOneHun!.value,
                    style: CustomTextStyles.titleMedium16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
