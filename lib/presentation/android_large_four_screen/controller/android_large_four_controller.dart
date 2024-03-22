import '../../../core/app_export.dart';
import '../models/android_large_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AndroidLargeFourScreen.
///
/// This class manages the state of the AndroidLargeFourScreen, including the
/// current androidLargeFourModelObj
class AndroidLargeFourController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AndroidLargeFourModel> androidLargeFourModelObj =
      AndroidLargeFourModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
