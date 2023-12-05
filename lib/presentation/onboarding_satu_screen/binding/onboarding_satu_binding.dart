import '../controller/onboarding_satu_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingSatuScreen.
///
/// This class ensures that the OnboardingSatuController is created when the
/// OnboardingSatuScreen is first loaded.
class OnboardingSatuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingSatuController());
  }
}
