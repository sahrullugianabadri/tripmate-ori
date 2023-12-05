import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/select_date_guest_screen/models/select_date_guest_model.dart';import 'package:flutter/material.dart';import 'package:table_calendar/table_calendar.dart';/// A controller class for the SelectDateGuestScreen.
///
/// This class manages the state of the SelectDateGuestScreen, including the
/// current selectDateGuestModelObj
class SelectDateGuestController extends GetxController {TextEditingController decCounterController = TextEditingController();

Rx<SelectDateGuestModel> selectDateGuestModelObj = SelectDateGuestModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

@override void onClose() { super.onClose(); decCounterController.dispose(); } 
 }
