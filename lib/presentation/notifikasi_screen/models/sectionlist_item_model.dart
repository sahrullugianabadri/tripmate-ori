import '../../../core/app_export.dart';/// This class is used in the [sectionlist_item_widget] screen.
class SectionlistItemModel {SectionlistItemModel({this.groupBy, this.id, }) { groupBy = groupBy  ?? Rx("");id = id  ?? Rx(""); }

Rx<String>? groupBy;

Rx<String>? id;

 }
