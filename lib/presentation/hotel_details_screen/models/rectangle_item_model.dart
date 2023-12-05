import '../../../core/app_export.dart';/// This class is used in the [rectangle_item_widget] screen.
class RectangleItemModel {RectangleItemModel({this.rectangle, this.id, }) { rectangle = rectangle  ?? Rx(ImageConstant.imgRectangle7);id = id  ?? Rx(""); }

Rx<String>? rectangle;

Rx<String>? id;

 }
