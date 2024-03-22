import '../../../core/app_export.dart';
import 'androidlargefour_item_model.dart';

/// This class defines the variables used in the [android_large_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeFourModel {
  Rx<List<AndroidlargefourItemModel>> androidlargefourItemList = Rx([
    AndroidlargefourItemModel(cakeOne: "Cake1".obs, oneHundredFifty: "150".obs),
    AndroidlargefourItemModel(cakeOne: "Cake1".obs, oneHundredFifty: "150".obs)
  ]);
}
