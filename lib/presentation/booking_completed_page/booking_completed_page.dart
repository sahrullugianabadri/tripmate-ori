import '../booking_completed_page/widgets/bookingcompletedlist_item_widget.dart';
import 'controller/booking_completed_controller.dart';
import 'models/booking_completed_model.dart';
import 'models/bookingcompletedlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tripmate_ori/core/app_export.dart';

class BookingCompletedPage extends StatelessWidget {
  BookingCompletedPage({Key? key})
      : super(
          key: key,
        );

  BookingCompletedController controller =
      Get.put(BookingCompletedController(BookingCompletedModel().obs));

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
              SizedBox(height: 30.v),
              _buildBookingCompletedList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingCompletedList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 20.v,
              );
            },
            itemCount: controller.bookingCompletedModelObj.value
                .bookingcompletedlistItemList.value.length,
            itemBuilder: (context, index) {
              BookingcompletedlistItemModel model = controller
                  .bookingCompletedModelObj
                  .value
                  .bookingcompletedlistItemList
                  .value[index];
              return BookingcompletedlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
