import '../../../core/app_export.dart';import 'hotelslist_item_model.dart';import 'martinezcannes_item_model.dart';/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel {Rx<List<HotelslistItemModel>> hotelslistItemList = Rx([HotelslistItemModel(image:ImageConstant.imgRectangle3.obs,emeraldaDeHotel: "Villa Fergi".obs,parisFrance: "Cipanas, Puncak".obs,price: "Rp.290.000".obs,perNight: "/ per malam".obs),HotelslistItemModel(image:ImageConstant.imgRectangle3400x300.obs,emeraldaDeHotel: "Villa Fergi".obs,parisFrance: "Cipanas, Puncak".obs,price: "Rp.290.000".obs,perNight: "/ per malam".obs)]);

Rx<List<MartinezcannesItemModel>> martinezcannesItemList = Rx([MartinezcannesItemModel(martinezCannes:ImageConstant.imgRectangle4.obs,presidentHotel: "Kalana Resort".obs,parisFrance: "Cipanas, Puncak".obs,fortyEight: "4.8".obs,reviews: "(4,378 reviews)".obs,price: "Rp.320.000".obs,night: "/ malam".obs),MartinezcannesItemModel(martinezCannes:ImageConstant.imgRectangle42.obs,presidentHotel: "Villa Victorian".obs,parisFrance: "Cipanas, Puncak".obs,fortyEight: "4.8".obs,reviews: "(4,378 reviews)".obs,price: "Rp.360.000".obs,night: "/ malam".obs)]);

 }
