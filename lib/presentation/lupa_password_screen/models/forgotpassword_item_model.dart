import '../../../core/app_export.dart';/// This class is used in the [forgotpassword_item_widget] screen.
class ForgotpasswordItemModel {ForgotpasswordItemModel({this.viaSMS, this.viaSMS1, this.oneHundredElevenThousandOneHun, this.id, }) { viaSMS = viaSMS  ?? Rx(ImageConstant.imgVolume);viaSMS1 = viaSMS1  ?? Rx("via SMS:");oneHundredElevenThousandOneHun = oneHundredElevenThousandOneHun  ?? Rx("+62 8783 ******99");id = id  ?? Rx(""); }

Rx<String>? viaSMS;

Rx<String>? viaSMS1;

Rx<String>? oneHundredElevenThousandOneHun;

Rx<String>? id;

 }
