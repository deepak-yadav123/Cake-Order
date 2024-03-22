import 'package:cake_order/presentation/android_large_four_screen/controller/android_large_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeFourScreen.
///
/// This class ensures that the AndroidLargeFourController is created when the
/// AndroidLargeFourScreen is first loaded.
class AndroidLargeFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeFourController());
  }
}
