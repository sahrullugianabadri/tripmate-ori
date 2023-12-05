import '../../../core/app_export.dart';import 'rectangle_item_model.dart';import 'framenineteen_item_model.dart';/// This class defines the variables used in the [hotel_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelDetailsModel {Rx<List<RectangleItemModel>> rectangleItemList = Rx([RectangleItemModel(rectangle:ImageConstant.imgRectangle7.obs),RectangleItemModel(rectangle:ImageConstant.imgRectangle8.obs),RectangleItemModel(rectangle:ImageConstant.imgRectangle9.obs)]);

Rx<List<FramenineteenItemModel>> framenineteenItemList = Rx([FramenineteenItemModel(jennyWilson:ImageConstant.imgEllipse1.obs,jennyWilson1: "Farhan Tuasalamon".obs,dec: "Desember 16, 2001".obs,veryniceandcomfortab: "Keren tempatnya,. tapi sayang harganya mahal".obs),FramenineteenItemModel(jennyWilson:ImageConstant.imgEllipse148x48.obs,jennyWilson1: "Rama Hawkins".obs,dec: "Desember 16, 2001".obs,veryniceandcomfortab: "Villa nya sangat indah, aku dan keluarga sangat puas sama pelayanan dsini".obs),FramenineteenItemModel(jennyWilson:ImageConstant.imgEllipse11.obs,jennyWilson1: "Anggun".obs,dec: "Desember 16, 2001".obs,veryniceandcomfortab: "Kamarnya keren, nyaman terus pemandangan nya juga luar biasa, g sabar nih pengen kesini lg".obs)]);

 }
