import 'package:cake_order/presentation/android_large_one_page/android_large_one_page.dart';
import 'package:cake_order/widgets/app_bar/custom_app_bar.dart';
import 'package:cake_order/widgets/app_bar/appbar_leading_image.dart';
import 'package:cake_order/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cake_order/widgets/custom_search_view.dart';
import 'widgets/androidlargefour_item_widget.dart';
import 'models/androidlargefour_item_model.dart';
import 'package:cake_order/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:cake_order/core/app_export.dart';
import 'controller/android_large_four_controller.dart';

class AndroidLargeFourScreen extends GetWidget<AndroidLargeFourController> {
  const AndroidLargeFourScreen({Key? key}) : super(key: key);

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
                      _buildFiftyOne(),
                      SizedBox(height: 33.v),
                      _buildAndroidLargeFour()
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
  Widget _buildFiftyOne() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(right: 10.h, bottom: 1.v),
              child: _buildNineteen(oNE: "lbl_all".tr)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 1.v),
              child: _buildNineteen(oNE: "lbl_one".tr)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 1.v),
              child: _buildNineteen(oNE: "lbl_two".tr)),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: _buildNineteen(oNE: "lbl_thr".tr))
        ]));
  }

  /// Section Widget
  Widget _buildAndroidLargeFour() {
    return SizedBox(
        height: 168.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(right: 18.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 30.h);
            },
            itemCount: controller.androidLargeFourModelObj.value
                .androidlargefourItemList.value.length,
            itemBuilder: (context, index) {
              AndroidlargefourItemModel model = controller
                  .androidLargeFourModelObj
                  .value
                  .androidlargefourItemList
                  .value[index];
              return AndroidlargefourItemWidget(model, onTapFrame: () {
                onTapFrame();
              });
            })));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildNineteen({required String oNE}) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder13),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPentagonOutlineShape,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(top: 6.v, bottom: 4.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 6.h, top: 6.v),
                      child: Text(oNE,
                          style: theme.textTheme.titleSmall!
                              .copyWith(color: appTheme.black900)))
                ])));
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
  onTapFrame() {
    Get.toNamed(
      AppRoutes.androidLargeTwoScreen,
    );
  }
}
