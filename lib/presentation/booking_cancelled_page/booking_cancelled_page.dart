import '../booking_cancelled_page/widgets/bookingcancelledlist_item_widget.dart';
import 'controller/booking_cancelled_controller.dart';
import 'models/booking_cancelled_model.dart';
import 'models/bookingcancelledlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tripmate_ori/core/app_export.dart';

class BookingCancelledPage extends StatelessWidget {
  BookingCancelledPage({Key? key})
      : super(
          key: key,
        );

  BookingCancelledController controller =
      Get.put(BookingCancelledController(BookingCancelledModel().obs));

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
              _buildBookingCancelledList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingCancelledList() {
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
            itemCount: controller.bookingCancelledModelObj.value
                .bookingcancelledlistItemList.value.length,
            itemBuilder: (context, index) {
              BookingcancelledlistItemModel model = controller
                  .bookingCancelledModelObj
                  .value
                  .bookingcancelledlistItemList
                  .value[index];
              return BookingcancelledlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
