import 'thirtytwo_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [android_large_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeTwoModel {
  Rx<List<ThirtytwoItemModel>> thirtytwoItemList =
      Rx(List.generate(4, (index) => ThirtytwoItemModel()));
}
