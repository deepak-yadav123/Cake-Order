import '../../../core/app_export.dart';
import '../models/android_large_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AndroidLargeOnePage.
///
/// This class manages the state of the AndroidLargeOnePage, including the
/// current androidLargeOneModelObj
class AndroidLargeOneController extends GetxController {
  AndroidLargeOneController(this.androidLargeOneModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<AndroidLargeOneModel> androidLargeOneModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
