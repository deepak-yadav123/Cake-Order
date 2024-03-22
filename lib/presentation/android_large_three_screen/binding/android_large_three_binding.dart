import 'package:cake_order/presentation/android_large_three_screen/controller/android_large_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeThreeScreen.
///
/// This class ensures that the AndroidLargeThreeController is created when the
/// AndroidLargeThreeScreen is first loaded.
class AndroidLargeThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeThreeController());
  }
}
