import '../../../core/app_export.dart';
import '../models/android_large_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AndroidLargeThreeScreen.
///
/// This class manages the state of the AndroidLargeThreeScreen, including the
/// current androidLargeThreeModelObj
class AndroidLargeThreeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AndroidLargeThreeModel> androidLargeThreeModelObj =
      AndroidLargeThreeModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
