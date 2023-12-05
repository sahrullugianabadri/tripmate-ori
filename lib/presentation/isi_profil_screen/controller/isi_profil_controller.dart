import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/isi_profil_screen/models/isi_profil_model.dart';import 'package:flutter/material.dart';/// A controller class for the IsiProfilScreen.
///
/// This class manages the state of the IsiProfilScreen, including the
/// current isiProfilModelObj
class IsiProfilController extends GetxController {TextEditingController fullNameEditTextController = TextEditingController();

TextEditingController nameEditTextController = TextEditingController();

TextEditingController dateOfBirthEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

TextEditingController phoneNumberEditTextController = TextEditingController();

Rx<IsiProfilModel> isiProfilModelObj = IsiProfilModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); fullNameEditTextController.dispose(); nameEditTextController.dispose(); dateOfBirthEditTextController.dispose(); emailEditTextController.dispose(); phoneNumberEditTextController.dispose(); } 
onSelected(dynamic value) { for (var element in isiProfilModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} isiProfilModelObj.value.dropdownItemList.refresh(); } 
 }
