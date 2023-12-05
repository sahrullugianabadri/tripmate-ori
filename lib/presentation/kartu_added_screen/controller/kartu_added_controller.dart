import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/kartu_added_screen/models/kartu_added_model.dart';/// A controller class for the KartuAddedScreen.
///
/// This class manages the state of the KartuAddedScreen, including the
/// current kartuAddedModelObj
class KartuAddedController extends GetxController {Rx<KartuAddedModel> kartuAddedModelObj = KartuAddedModel().obs;

Rx<String> radioGroup = "".obs;

 }
