import 'package:cake_order/presentation/android_large_two_screen/controller/android_large_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwoScreen.
///
/// This class ensures that the AndroidLargeTwoController is created when the
/// AndroidLargeTwoScreen is first loaded.
class AndroidLargeTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwoController());
  }
}
