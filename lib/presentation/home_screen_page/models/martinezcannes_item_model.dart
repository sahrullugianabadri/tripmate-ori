import '../../../core/app_export.dart';/// This class is used in the [martinezcannes_item_widget] screen.
class MartinezcannesItemModel {MartinezcannesItemModel({this.martinezCannes, this.presidentHotel, this.parisFrance, this.fortyEight, this.reviews, this.price, this.night, this.id, }) { martinezCannes = martinezCannes  ?? Rx(ImageConstant.imgRectangle4);presidentHotel = presidentHotel  ?? Rx("Kalana Resort");parisFrance = parisFrance  ?? Rx("Cipanas, Puncak");fortyEight = fortyEight  ?? Rx("4.8");reviews = reviews  ?? Rx("(4,378 reviews)");price = price  ?? Rx("Rp.320.000");night = night  ?? Rx("/ malam");id = id  ?? Rx(""); }

Rx<String>? martinezCannes;

Rx<String>? presidentHotel;

Rx<String>? parisFrance;

Rx<String>? fortyEight;

Rx<String>? reviews;

Rx<String>? price;

Rx<String>? night;

Rx<String>? id;

 }
