import '../../../core/app_export.dart';
import '../models/android_large_five_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AndroidLargeFiveScreen.
///
/// This class manages the state of the AndroidLargeFiveScreen, including the
/// current androidLargeFiveModelObj
class AndroidLargeFiveController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AndroidLargeFiveModel> androidLargeFiveModelObj =
      AndroidLargeFiveModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
