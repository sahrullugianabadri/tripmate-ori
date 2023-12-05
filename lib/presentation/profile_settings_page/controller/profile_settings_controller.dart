import 'package:tripmate_ori/core/app_export.dart';import 'package:tripmate_ori/presentation/profile_settings_page/models/profile_settings_model.dart';/// A controller class for the ProfileSettingsPage.
///
/// This class manages the state of the ProfileSettingsPage, including the
/// current profileSettingsModelObj
class ProfileSettingsController extends GetxController {ProfileSettingsController(this.profileSettingsModelObj);

Rx<ProfileSettingsModel> profileSettingsModelObj;

Rx<bool> isSelectedSwitch = false.obs;

 }
