import '../controller/notifikasi_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotifikasiScreen.
///
/// This class ensures that the NotifikasiController is created when the
/// NotifikasiScreen is first loaded.
class NotifikasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotifikasiController());
  }
}
