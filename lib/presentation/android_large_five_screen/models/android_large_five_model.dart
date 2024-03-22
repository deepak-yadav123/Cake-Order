import '../../../core/app_export.dart';
import 'androidlargefive_item_model.dart';

/// This class defines the variables used in the [android_large_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeFiveModel {
  Rx<List<AndroidlargefiveItemModel>> androidlargefiveItemList = Rx([
    AndroidlargefiveItemModel(cakeOne: "Cake1".obs, oneHundredFifty: "150".obs),
    AndroidlargefiveItemModel(cakeOne: "Cake1".obs, oneHundredFifty: "150".obs),
    AndroidlargefiveItemModel(cakeOne: "Cake1".obs, oneHundredFifty: "150".obs)
  ]);
}
