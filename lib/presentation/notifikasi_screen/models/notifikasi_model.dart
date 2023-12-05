import 'sectionlist_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [notifikasi_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotifikasiModel {Rx<List<SectionlistItemModel>> sectionlistItemList = Rx([SectionlistItemModel(groupBy: "Sekarang".obs),SectionlistItemModel(groupBy: "Sekarang".obs),SectionlistItemModel(groupBy: "Kemarin".obs),SectionlistItemModel(groupBy: "Kemarin".obs)]);

 }
