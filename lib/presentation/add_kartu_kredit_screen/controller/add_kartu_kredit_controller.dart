import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/add_kartu_kredit_screen/models/add_kartu_kredit_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddKartuKreditScreen.
///
/// This class manages the state of the AddKartuKreditScreen, including the
/// current addKartuKreditModelObj
class AddKartuKreditController extends GetxController {TextEditingController nameEditTextController = TextEditingController();

TextEditingController numberEditTextController = TextEditingController();

TextEditingController expiryDateEditTextController = TextEditingController();

TextEditingController cvvEditTextController = TextEditingController();

Rx<AddKartuKreditModel> addKartuKreditModelObj = AddKartuKreditModel().obs;

@override void onClose() { super.onClose(); nameEditTextController.dispose(); numberEditTextController.dispose(); expiryDateEditTextController.dispose(); cvvEditTextController.dispose(); } 
 }
