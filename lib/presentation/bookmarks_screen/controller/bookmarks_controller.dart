import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/bookmarks_screen/models/bookmarks_model.dart';/// A controller class for the BookmarksScreen.
///
/// This class manages the state of the BookmarksScreen, including the
/// current bookmarksModelObj
class BookmarksController extends GetxController {Rx<BookmarksModel> bookmarksModelObj = BookmarksModel().obs;

 }
