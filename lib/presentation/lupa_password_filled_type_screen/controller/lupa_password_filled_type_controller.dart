import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/lupa_password_filled_type_screen/models/lupa_password_filled_type_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the LupaPasswordFilledTypeScreen.
///
/// This class manages the state of the LupaPasswordFilledTypeScreen, including the
/// current lupaPasswordFilledTypeModelObj
class LupaPasswordFilledTypeController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<LupaPasswordFilledTypeModel> lupaPasswordFilledTypeModelObj = LupaPasswordFilledTypeModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
