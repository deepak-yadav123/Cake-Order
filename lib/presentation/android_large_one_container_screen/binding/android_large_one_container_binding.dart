import 'package:cake_order/presentation/android_large_one_container_screen/controller/android_large_one_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeOneContainerScreen.
///
/// This class ensures that the AndroidLargeOneContainerController is created when the
/// AndroidLargeOneContainerScreen is first loaded.
class AndroidLargeOneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeOneContainerController());
  }
}
