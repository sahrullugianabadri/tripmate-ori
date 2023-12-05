import '../controller/lupa_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LupaPasswordScreen.
///
/// This class ensures that the LupaPasswordController is created when the
/// LupaPasswordScreen is first loaded.
class LupaPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LupaPasswordController());
  }
}
