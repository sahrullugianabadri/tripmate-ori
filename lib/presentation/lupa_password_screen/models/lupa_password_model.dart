import '../../../core/app_export.dart';import 'forgotpassword_item_model.dart';/// This class defines the variables used in the [lupa_password_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LupaPasswordModel {Rx<List<ForgotpasswordItemModel>> forgotpasswordItemList = Rx([ForgotpasswordItemModel(viaSMS:ImageConstant.imgVolume.obs,viaSMS1: "via SMS:".obs,oneHundredElevenThousandOneHun: "+62 8783 ******99".obs),ForgotpasswordItemModel(viaSMS:ImageConstant.imgCheckmarkPrimary.obs,viaSMS1: "via Email:".obs,oneHundredElevenThousandOneHun: "user@domain.com".obs)]);

 }
