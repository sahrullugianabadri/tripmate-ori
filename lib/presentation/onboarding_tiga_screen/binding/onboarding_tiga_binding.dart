import '../controller/onboarding_tiga_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingTigaScreen.
///
/// This class ensures that the OnboardingTigaController is created when the
/// OnboardingTigaScreen is first loaded.
class OnboardingTigaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingTigaController());
  }
}
