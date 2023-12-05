import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/booking_name_tab_container_screen/models/booking_name_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the BookingNameTabContainerScreen.
///
/// This class manages the state of the BookingNameTabContainerScreen, including the
/// current bookingNameTabContainerModelObj
class BookingNameTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<BookingNameTabContainerModel> bookingNameTabContainerModelObj = BookingNameTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
