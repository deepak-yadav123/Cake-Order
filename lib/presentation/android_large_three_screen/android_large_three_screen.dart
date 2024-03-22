import 'package:cake_order/presentation/android_large_one_page/android_large_one_page.dart';
import 'package:cake_order/widgets/app_bar/custom_app_bar.dart';
import 'package:cake_order/widgets/app_bar/appbar_leading_image.dart';
import 'package:cake_order/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cake_order/widgets/custom_search_view.dart';
import 'models/thirty_item_model.dart';
import '../android_large_three_screen/widgets/thirty_item_widget.dart';
import 'package:cake_order/widgets/custom_icon_button.dart';
import 'package:cake_order/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:cake_order/core/app_export.dart';
import 'controller/android_large_three_controller.dart';

class AndroidLargeThreeScreen extends GetWidget<AndroidLargeThreeController> {
  const AndroidLargeThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(15.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_cakes".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 18.v),
                      CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search".tr),
                      SizedBox(height: 22.v),
                      Text("msg_browse_by_category".tr,
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 13.v),
                      _buildThirty(),
                      SizedBox(height: 33.v),
                      GestureDetector(
                          onTap: () {
                            onTapFrameOne();
                          },
                          child: Container(
                              margin: EdgeInsets.only(right: 189.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17.h, vertical: 6.v),
                              decoration: AppDecoration.outlineBlack900,
                              child: Column(children: [
                                SizedBox(height: 5.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle2,
                                    height: 107.v,
                                    width: 105.h),
                                Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_cake1".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge),
                                                Text("lbl_150".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)
                                              ]),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 2.v, bottom: 4.v),
                                              child: CustomIconButton(
                                                  height: 33.adaptSize,
                                                  width: 33.adaptSize,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPlus1)))
                                        ]))
                              ]))),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 19.h, right: 27.h),
                child: _buildBottomBar())));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack1,
            margin: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 6.v),
            onTap: () {
              onTapBackOne();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMan1,
              margin: EdgeInsets.symmetric(horizontal: 5.h, vertical: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildThirty() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Obx(() => Wrap(
            runSpacing: 20.v,
            spacing: 20.h,
            children: List<Widget>.generate(
                controller.androidLargeThreeModelObj.value.thirtyItemList.value
                    .length, (index) {
              ThirtyItemModel model = controller
                  .androidLargeThreeModelObj.value.thirtyItemList.value[index];
              return ThirtyItemWidget(model);
            }))));
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

  /// Navigates to the androidLargeOneContainerScreen when the action is triggered.
  onTapBackOne() {
    Get.toNamed(
      AppRoutes.androidLargeOneContainerScreen,
    );
  }

  /// Navigates to the androidLargeTwoScreen when the action is triggered.
  onTapFrameOne() {
    Get.toNamed(
      AppRoutes.androidLargeTwoScreen,
    );
  }
}
