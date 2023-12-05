import '../../../core/app_export.dart';/// This class is used in the [hotelslist_item_widget] screen.
class HotelslistItemModel {HotelslistItemModel({this.image, this.emeraldaDeHotel, this.parisFrance, this.price, this.perNight, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle3);emeraldaDeHotel = emeraldaDeHotel  ?? Rx("Villa Fergi");parisFrance = parisFrance  ?? Rx("Cipanas, Puncak");price = price  ?? Rx("Rp.290.000");perNight = perNight  ?? Rx("/ per malam");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? emeraldaDeHotel;

Rx<String>? parisFrance;

Rx<String>? price;

Rx<String>? perNight;

Rx<String>? id;

 }
