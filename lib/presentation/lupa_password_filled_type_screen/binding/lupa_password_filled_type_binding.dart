import '../controller/lupa_password_filled_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LupaPasswordFilledTypeScreen.
///
/// This class ensures that the LupaPasswordFilledTypeController is created when the
/// LupaPasswordFilledTypeScreen is first loaded.
class LupaPasswordFilledTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LupaPasswordFilledTypeController());
  }
}
