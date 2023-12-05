import '../controller/lupa_password_type_otp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LupaPasswordTypeOtpScreen.
///
/// This class ensures that the LupaPasswordTypeOtpController is created when the
/// LupaPasswordTypeOtpScreen is first loaded.
class LupaPasswordTypeOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LupaPasswordTypeOtpController());
  }
}
