import '../booking_ongoing_page/widgets/bookingongoing_item_widget.dart';import 'controller/booking_ongoing_controller.dart';import 'models/booking_ongoing_model.dart';import 'models/bookingongoing_item_model.dart';import 'package:flutter/material.dart';import 'package:tripmate_ori/core/app_export.dart';
// ignore_for_file: must_be_immutable
class BookingOngoingPage extends StatelessWidget {BookingOngoingPage({Key? key}) : super(key: key);

BookingOngoingController controller = Get.put(BookingOngoingController(BookingOngoingModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimary, child: Column(children: [SizedBox(height: 30.v), _buildBookingOngoing()])))); } 
/// Section Widget
Widget _buildBookingOngoing() { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: controller.bookingOngoingModelObj.value.bookingongoingItemList.value.length, itemBuilder: (context, index) {BookingongoingItemModel model = controller.bookingOngoingModelObj.value.bookingongoingItemList.value[index]; return BookingongoingItemWidget(model, onTapBookingActionCancelBookingButton: () {onTapBookingActionCancelBookingButton();}, onTapBookingActionViewTicketButton: () {onTapBookingActionViewTicketButton();});})))); } 

onTapBookingActionCancelBookingButton() { // TODO: implement Actions
 } 
/// Navigates to the viewTicketScreen when the action is triggered.
onTapBookingActionViewTicketButton() { Get.toNamed(AppRoutes.viewTicketScreen, ); } 
 }
