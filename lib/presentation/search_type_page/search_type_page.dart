import '../search_type_page/widgets/searchtype_item_widget.dart';
import 'controller/search_type_controller.dart';
import 'models/search_type_model.dart';
import 'models/searchtype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tripmate_ori/core/app_export.dart';

class SearchTypePage extends StatelessWidget {
  SearchTypePage({Key? key})
      : super(
          key: key,
        );

  SearchTypeController controller =
      Get.put(SearchTypeController(SearchTypeModel().obs));

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
              SizedBox(height: 32.v),
              _buildRecentSearches(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentSearches() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_recent".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 21.v),
          Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 10.v,
                );
              },
              itemCount: controller
                  .searchTypeModelObj.value.searchtypeItemList.value.length,
              itemBuilder: (context, index) {
                SearchtypeItemModel model = controller
                    .searchTypeModelObj.value.searchtypeItemList.value[index];
                return SearchtypeItemWidget(
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
