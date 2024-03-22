import 'package:cake_order/presentation/android_large_one_page/android_large_one_page.dart';
import 'package:cake_order/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:cake_order/core/app_export.dart';
import 'controller/android_large_one_container_controller.dart';

class AndroidLargeOneContainerScreen
    extends GetWidget<AndroidLargeOneContainerController> {
  const AndroidLargeOneContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.androidLargeOnePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 19.h, right: 27.h),
                child: _buildBottomBar())));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.androidLargeOnePage;
      case BottomBarEnum.Exploreore:
        return "/";
      case BottomBarEnum.Like:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.androidLargeOnePage:
        return AndroidLargeOnePage();
      default:
        return DefaultWidget();
    }
  }
}
