import 'package:cake_order/widgets/app_bar/custom_app_bar.dart';
import 'package:cake_order/widgets/app_bar/appbar_leading_image.dart';
import 'package:cake_order/widgets/app_bar/appbar_title.dart';
import 'package:cake_order/widgets/custom_outlined_button.dart';
import 'models/thirtytwo_item_model.dart';
import '../android_large_two_screen/widgets/thirtytwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:cake_order/core/app_export.dart';
import 'controller/android_large_two_controller.dart';

class AndroidLargeTwoScreen extends GetWidget<AndroidLargeTwoController> {
  const AndroidLargeTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 9.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 26.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle2,
                          height: 333.v,
                          width: 313.h,
                          margin: EdgeInsets.only(left: 4.h)),
                      SizedBox(height: 30.v),
                      _buildFortySeven(),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_description".tr,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 11.v),
                      Container(
                          width: 282.h,
                          margin: EdgeInsets.only(left: 4.h, right: 35.h),
                          child: Text("msg_this_cake_just_tastes".tr,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 7.v),
                      Text("lbl_size".tr, style: theme.textTheme.titleLarge),
                      SizedBox(height: 8.v),
                      _buildThirtyTwo(),
                      SizedBox(height: 13.v),
                      Text("lbl_price_150".tr,
                          style: CustomTextStyles.headlineSmallBold)
                    ])),
            bottomNavigationBar: _buildBUYNOW()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack1,
            margin: EdgeInsets.only(left: 10.h, top: 4.v, bottom: 4.v),
            onTap: () {
              onTapBackOne();
            }),
        actions: [
          AppbarTitle(
              text: "lbl_like".tr,
              margin: EdgeInsets.fromLTRB(17.h, 11.v, 17.h, 4.v))
        ]);
  }

  /// Section Widget
  Widget _buildFortySeven() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Text("lbl_mongenous".tr,
                  style: theme.textTheme.headlineSmall)),
          CustomOutlinedButton(height: 40.v, width: 70.h, text: "lbl_rating".tr)
        ]));
  }

  /// Section Widget
  Widget _buildThirtyTwo() {
    return Obx(() => Wrap(
        runSpacing: 20.v,
        spacing: 20.h,
        children: List<Widget>.generate(
            controller.androidLargeTwoModelObj.value.thirtytwoItemList.value
                .length, (index) {
          ThirtytwoItemModel model = controller
              .androidLargeTwoModelObj.value.thirtytwoItemList.value[index];
          return ThirtytwoItemWidget(model);
        })));
  }

  /// Section Widget
  Widget _buildBUYNOW() {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 17.h, bottom: 10.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomOutlinedButton(
                  text: "lbl_buy_now".tr,
                  margin: EdgeInsets.only(right: 11.h),
                  buttonStyle: CustomButtonStyles.outlineBlack1,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)),
          Expanded(
              child: CustomOutlinedButton(
                  text: "lbl_add_to_cart".tr,
                  margin: EdgeInsets.only(left: 11.h),
                  buttonStyle: CustomButtonStyles.outlineBlack2,
                  buttonTextStyle: theme.textTheme.bodyMedium!))
        ]));
  }

  /// Navigates to the androidLargeOneContainerScreen when the action is triggered.
  onTapBackOne() {
    Get.toNamed(
      AppRoutes.androidLargeOneContainerScreen,
    );
  }
}
