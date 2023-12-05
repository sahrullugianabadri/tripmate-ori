import '../../../core/app_export.dart';/// This class is used in the [bookingcompletedlist_item_widget] screen.
class BookingcompletedlistItemModel {BookingcompletedlistItemModel({this.bulgariResort, this.bulgariResort1, this.parisFrance, this.yeayyouhavecompletedit, this.id, }) { bulgariResort = bulgariResort  ?? Rx(ImageConstant.imgRectangle4100x100);bulgariResort1 = bulgariResort1  ?? Rx("Villa Miky");parisFrance = parisFrance  ?? Rx("Cipanas, Puncak");yeayyouhavecompletedit = yeayyouhavecompletedit  ?? Rx("Selesai");id = id  ?? Rx(""); }

Rx<String>? bulgariResort;

Rx<String>? bulgariResort1;

Rx<String>? parisFrance;

Rx<String>? yeayyouhavecompletedit;

Rx<String>? id;

 }
