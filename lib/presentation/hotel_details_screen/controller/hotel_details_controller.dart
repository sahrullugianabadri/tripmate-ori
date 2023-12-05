import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/hotel_details_screen/models/hotel_details_model.dart';/// A controller class for the HotelDetailsScreen.
///
/// This class manages the state of the HotelDetailsScreen, including the
/// current hotelDetailsModelObj
class HotelDetailsController extends GetxController {Rx<HotelDetailsModel> hotelDetailsModelObj = HotelDetailsModel().obs;

 }
