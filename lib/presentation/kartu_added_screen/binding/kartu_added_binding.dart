import '../controller/kartu_added_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KartuAddedScreen.
///
/// This class ensures that the KartuAddedController is created when the
/// KartuAddedScreen is first loaded.
class KartuAddedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KartuAddedController());
  }
}
