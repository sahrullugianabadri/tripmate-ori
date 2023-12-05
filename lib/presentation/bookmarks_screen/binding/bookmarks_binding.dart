import '../controller/bookmarks_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookmarksScreen.
///
/// This class ensures that the BookmarksController is created when the
/// BookmarksScreen is first loaded.
class BookmarksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookmarksController());
  }
}
