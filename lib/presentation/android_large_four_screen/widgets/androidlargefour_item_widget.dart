import '../models/androidlargefour_item_model.dart';
import '../controller/android_large_four_controller.dart';
import 'package:cake_order/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:cake_order/core/app_export.dart';

// ignore: must_be_immutable
class AndroidlargefourItemWidget extends StatelessWidget {
  AndroidlargefourItemWidget(
    this.androidlargefourItemModelObj, {
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  AndroidlargefourItemModel androidlargefourItemModelObj;

  var controller = Get.find<AndroidLargeFourController>();

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 141.h,
      child: GestureDetector(
        onTap: () {
          onTapFrame!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.outlineBlack900,
          child: Column(
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle2,
                height: 107.v,
                width: 105.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          androidlargefourItemModelObj.cakeOne!.value,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Obx(
                        () => Text(
                          androidlargefourItemModelObj.oneHundredFifty!.value,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 21.h,
                      top: 2.v,
                      bottom: 4.v,
                    ),
                    child: CustomIconButton(
                      height: 33.adaptSize,
                      width: 33.adaptSize,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPlus1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
