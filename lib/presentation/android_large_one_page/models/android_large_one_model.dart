import '../../../core/app_export.dart';
import 'androidlargeone_item_model.dart';

/// This class defines the variables used in the [android_large_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeOneModel {
  Rx<List<AndroidlargeoneItemModel>> androidlargeoneItemList = Rx([
    AndroidlargeoneItemModel(cakeOne: "Cake1".obs, oneHundredFifty: "150".obs),
    AndroidlargeoneItemModel(cakeOne: "Cake1".obs, oneHundredFifty: "150".obs),
    AndroidlargeoneItemModel(cakeOne: "Cake1".obs, oneHundredFifty: "150".obs),
    AndroidlargeoneItemModel(cakeOne: "Cake1".obs, oneHundredFifty: "150".obs)
  ]);
}
