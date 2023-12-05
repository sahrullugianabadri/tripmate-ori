import '../controller/home_screen_controller.dart';
import '../models/hotelslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tripmate_ori/core/app_export.dart';
import 'package:tripmate_ori/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class HotelslistItemWidget extends StatelessWidget {
  HotelslistItemWidget(
    this.hotelslistItemModelObj, {
    Key? key,
    this.onTapDetails,
  }) : super(
          key: key,
        );

  HotelslistItemModel hotelslistItemModelObj;

  var controller = Get.find<HomeScreenController>();

  VoidCallback? onTapDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.v,
      width: 300.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: hotelslistItemModelObj.image!.value,
              height: 400.v,
              width: 300.h,
              radius: BorderRadius.circular(
                36.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                onTapDetails!.call();
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomElevatedButton(
                    height: 32.v,
                    width: 71.h,
                    text: "lbl_4_8".tr,
                    margin: EdgeInsets.only(right: 23.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgStar,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                    buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                  ),
                  SizedBox(height: 172.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.h,
                      vertical: 21.v,
                    ),
                    decoration: AppDecoration.gradient.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL36,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 16.v),
                        Obx(
                          () => Text(
                            hotelslistItemModelObj.emeraldaDeHotel!.value,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Obx(
                          () => Text(
                            hotelslistItemModelObj.parisFrance!.value,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Obx(
                                () => Text(
                                  hotelslistItemModelObj.price!.value,
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                top: 9.v,
                                bottom: 5.v,
                              ),
                              child: Obx(
                                () => Text(
                                  hotelslistItemModelObj.perNight!.value,
                                  style: CustomTextStyles.bodyMediumWhiteA700,
                                ),
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgBookmark,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              margin: EdgeInsets.only(bottom: 3.v),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
