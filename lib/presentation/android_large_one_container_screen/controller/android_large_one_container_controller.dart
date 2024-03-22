import '../../../core/app_export.dart';
import '../models/android_large_one_container_model.dart';

/// A controller class for the AndroidLargeOneContainerScreen.
///
/// This class manages the state of the AndroidLargeOneContainerScreen, including the
/// current androidLargeOneContainerModelObj
class AndroidLargeOneContainerController extends GetxController {
  Rx<AndroidLargeOneContainerModel> androidLargeOneContainerModelObj =
      AndroidLargeOneContainerModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.androidLargeTwoScreen,
      );
    });
  }
}
