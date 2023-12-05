import '../../../core/app_export.dart';/// This class is used in the [bookingcancelledlist_item_widget] screen.
class BookingcancelledlistItemModel {BookingcancelledlistItemModel({this.palmsCasinoResort, this.palmsCasinoResort1, this.londonUnitedKingdom, this.youCanceledThis, this.id, }) { palmsCasinoResort = palmsCasinoResort  ?? Rx(ImageConstant.imgRectangle4100x100);palmsCasinoResort1 = palmsCasinoResort1  ?? Rx("Villa Kembar Pink");londonUnitedKingdom = londonUnitedKingdom  ?? Rx("Ciloto, Cianjur");youCanceledThis = youCanceledThis  ?? Rx("Anda membatalkan pemesanan hotel ini");id = id  ?? Rx(""); }

Rx<String>? palmsCasinoResort;

Rx<String>? palmsCasinoResort1;

Rx<String>? londonUnitedKingdom;

Rx<String>? youCanceledThis;

Rx<String>? id;

 }
