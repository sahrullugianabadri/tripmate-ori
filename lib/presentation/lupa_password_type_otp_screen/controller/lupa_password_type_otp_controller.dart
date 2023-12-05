import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/lupa_password_type_otp_screen/models/lupa_password_type_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the LupaPasswordTypeOtpScreen.
///
/// This class manages the state of the LupaPasswordTypeOtpScreen, including the
/// current lupaPasswordTypeOtpModelObj
class LupaPasswordTypeOtpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<LupaPasswordTypeOtpModel> lupaPasswordTypeOtpModelObj = LupaPasswordTypeOtpModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
