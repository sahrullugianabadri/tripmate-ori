import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/booking_name_page/models/booking_name_model.dart';import 'package:flutter/material.dart';/// A controller class for the BookingNamePage.
///
/// This class manages the state of the BookingNamePage, including the
/// current bookingNameModelObj
class BookingNameController extends GetxController {BookingNameController(this.bookingNameModelObj);

TextEditingController editTextLabelController = TextEditingController();

TextEditingController editTextLabelController1 = TextEditingController();

TextEditingController editTextDateController = TextEditingController();

TextEditingController editTextEmailController = TextEditingController();

TextEditingController editTextPhoneController = TextEditingController();

Rx<BookingNameModel> bookingNameModelObj;

@override void onClose() { super.onClose(); editTextLabelController.dispose(); editTextLabelController1.dispose(); editTextDateController.dispose(); editTextEmailController.dispose(); editTextPhoneController.dispose(); } 
 }
