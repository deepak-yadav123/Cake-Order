import '../../../core/app_export.dart';
import '../models/android_large_two_model.dart';

/// A controller class for the AndroidLargeTwoScreen.
///
/// This class manages the state of the AndroidLargeTwoScreen, including the
/// current androidLargeTwoModelObj
class AndroidLargeTwoController extends GetxController {
  Rx<AndroidLargeTwoModel> androidLargeTwoModelObj = AndroidLargeTwoModel().obs;
}
