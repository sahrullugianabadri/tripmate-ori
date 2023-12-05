import '../filter_result_page/widgets/filterresult_item_widget.dart';
import 'controller/filter_result_controller.dart';
import 'models/filter_result_model.dart';
import 'models/filterresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tripmate_ori/core/app_export.dart';

class FilterResultPage extends StatelessWidget {
  FilterResultPage({Key? key})
      : super(
          key: key,
        );

  FilterResultController controller =
      Get.put(FilterResultController(FilterResultModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildRecommendedSection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendedSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "msg_recommended_586_379".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgMenuPrimary,
                height: 28.adaptSize,
                width: 28.adaptSize,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVideoCamera,
                height: 28.adaptSize,
                width: 28.adaptSize,
                margin: EdgeInsets.only(left: 12.h),
              ),
            ],
          ),
          SizedBox(height: 22.v),
          Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 24.v,
                );
              },
              itemCount: controller
                  .filterResultModelObj.value.filterresultItemList.value.length,
              itemBuilder: (context, index) {
                FilterresultItemModel model = controller.filterResultModelObj
                    .value.filterresultItemList.value[index];
                return FilterresultItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
