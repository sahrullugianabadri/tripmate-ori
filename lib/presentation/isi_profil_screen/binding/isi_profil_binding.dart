import '../controller/isi_profil_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IsiProfilScreen.
///
/// This class ensures that the IsiProfilController is created when the
/// IsiProfilScreen is first loaded.
class IsiProfilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IsiProfilController());
  }
}
