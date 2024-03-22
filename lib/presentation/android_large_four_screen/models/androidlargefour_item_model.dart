import '../../../core/app_export.dart';

/// This class is used in the [androidlargefour_item_widget] screen.
class AndroidlargefourItemModel {
  AndroidlargefourItemModel({
    this.cakeOne,
    this.oneHundredFifty,
    this.id,
  }) {
    cakeOne = cakeOne ?? Rx("Cake1");
    oneHundredFifty = oneHundredFifty ?? Rx("150");
    id = id ?? Rx("");
  }

  Rx<String>? cakeOne;

  Rx<String>? oneHundredFifty;

  Rx<String>? id;
}
