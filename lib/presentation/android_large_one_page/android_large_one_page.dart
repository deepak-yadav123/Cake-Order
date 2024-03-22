import 'package:cake_order/widgets/app_bar/custom_app_bar.dart';
import 'package:cake_order/widgets/app_bar/appbar_leading_image.dart';
import 'package:cake_order/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cake_order/widgets/custom_search_view.dart';
import 'widgets/androidlargeone_item_widget.dart';
import 'models/androidlargeone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:cake_order/core/app_export.dart';
import 'controller/android_large_one_controller.dart';
import 'models/android_large_one_model.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeOnePage extends StatelessWidget {
  AndroidLargeOnePage({Key? key}) : super(key: key);

  AndroidLargeOneController controller =
      Get.put(AndroidLargeOneController(AndroidLargeOneModel().obs));

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
                      _buildSeventyTwo(),
                      SizedBox(height: 33.v),
                      _buildAndroidLargeOne()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack1,
            margin: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 6.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMan1,
              margin: EdgeInsets.symmetric(horizontal: 5.h, vertical: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildSeventyTwo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(right: 10.h, bottom: 1.v),
              child: _buildSixteen(oNE: "lbl_all".tr)),
          Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 1.v),
              child: _buildSixteen(
                  oNE: "lbl_one".tr,
                  onTapSixteen: () {
                    onTapSixteen();
                  })),
          Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 1.v),
              child: _buildSixteen(
                  oNE: "lbl_two".tr,
                  onTapSixteen: () {
                    onTapThirteen();
                  })),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: _buildSixteen(
                  oNE: "lbl_thr".tr,
                  onTapSixteen: () {
                    onTapTen();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildAndroidLargeOne() {
    return Padding(
        padding: EdgeInsets.only(right: 18.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 169.v,
                crossAxisCount: 2,
                mainAxisSpacing: 30.h,
                crossAxisSpacing: 30.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.androidLargeOneModelObj.value
                .androidlargeoneItemList.value.length,
            itemBuilder: (context, index) {
              AndroidlargeoneItemModel model = controller
                  .androidLargeOneModelObj
                  .value
                  .androidlargeoneItemList
                  .value[index];
              return AndroidlargeoneItemWidget(model, onTapFrame: () {
                onTapFrame();
              });
            })));
  }

  /// Common widget
  Widget _buildSixteen({
    required String oNE,
    Function? onTapSixteen,
  }) {
    return GestureDetector(
        onTap: () {
          onTapSixteen!.call();
        },
        child: Expanded(
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
                    ]))));
  }

  /// Navigates to the androidLargeThreeScreen when the action is triggered.
  onTapSixteen() {
    Get.toNamed(
      AppRoutes.androidLargeThreeScreen,
    );
  }

  /// Navigates to the androidLargeFourScreen when the action is triggered.
  onTapThirteen() {
    Get.toNamed(
      AppRoutes.androidLargeFourScreen,
    );
  }

  /// Navigates to the androidLargeFiveScreen when the action is triggered.
  onTapTen() {
    Get.toNamed(
      AppRoutes.androidLargeFiveScreen,
    );
  }

  /// Navigates to the androidLargeTwoScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.androidLargeTwoScreen,
    );
  }
}
