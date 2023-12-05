import '../controller/booking_name_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingNameTabContainerScreen.
///
/// This class ensures that the BookingNameTabContainerController is created when the
/// BookingNameTabContainerScreen is first loaded.
class BookingNameTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingNameTabContainerController());
  }
}
