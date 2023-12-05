import '../../../core/app_export.dart';import 'bookingcompletedlist_item_model.dart';/// This class defines the variables used in the [booking_completed_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingCompletedModel {Rx<List<BookingcompletedlistItemModel>> bookingcompletedlistItemList = Rx([BookingcompletedlistItemModel(bulgariResort:ImageConstant.imgRectangle4100x100.obs,bulgariResort1: "Villa Miky".obs,parisFrance: "Cipanas, Puncak".obs,yeayyouhavecompletedit: "Selesai".obs),BookingcompletedlistItemModel(bulgariResort:ImageConstant.imgRectangle.obs,bulgariResort1: "Villa D'Orchid Park".obs,parisFrance: "Lembah permai puncak".obs,yeayyouhavecompletedit: "Selesai".obs)]);

 }
