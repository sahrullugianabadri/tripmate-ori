import '../controller/add_kartu_kredit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddKartuKreditScreen.
///
/// This class ensures that the AddKartuKreditController is created when the
/// AddKartuKreditScreen is first loaded.
class AddKartuKreditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddKartuKreditController());
  }
}
