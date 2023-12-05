import '../controller/tempat_populer_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TempatPopulerScreen.
///
/// This class ensures that the TempatPopulerController is created when the
/// TempatPopulerScreen is first loaded.
class TempatPopulerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TempatPopulerController());
  }
}
