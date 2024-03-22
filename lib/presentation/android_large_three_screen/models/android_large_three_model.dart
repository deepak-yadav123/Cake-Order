import 'thirty_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [android_large_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeThreeModel {
  Rx<List<ThirtyItemModel>> thirtyItemList =
      Rx(List.generate(4, (index) => ThirtyItemModel()));
}
