import '../../../core/app_export.dart';/// This class is used in the [mybookmarks_item_widget] screen.
class MybookmarksItemModel {MybookmarksItemModel({this.image, this.presidentMilaDe, this.fortyEight, this.parisFrance, this.price, this.night, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle41);presidentMilaDe = presidentMilaDe  ?? Rx("Wisma Halim");fortyEight = fortyEight  ?? Rx("4.6");parisFrance = parisFrance  ?? Rx("Cipanas, Puncak");price = price  ?? Rx("Rp.290.000");night = night  ?? Rx("/ malam");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? presidentMilaDe;

Rx<String>? fortyEight;

Rx<String>? parisFrance;

Rx<String>? price;

Rx<String>? night;

Rx<String>? id;

 }
