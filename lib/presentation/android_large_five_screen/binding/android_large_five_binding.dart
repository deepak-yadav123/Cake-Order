import 'package:cake_order/presentation/android_large_five_screen/controller/android_large_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeFiveScreen.
///
/// This class ensures that the AndroidLargeFiveController is created when the
/// AndroidLargeFiveScreen is first loaded.
class AndroidLargeFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeFiveController());
  }
}
