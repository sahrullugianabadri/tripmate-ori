import '../controller/onboarding_dua_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingDuaScreen.
///
/// This class ensures that the OnboardingDuaController is created when the
/// OnboardingDuaScreen is first loaded.
class OnboardingDuaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingDuaController());
  }
}
