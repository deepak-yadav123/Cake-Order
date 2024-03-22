import '../models/thirty_item_model.dart';
import 'package:flutter/material.dart';
import 'package:cake_order/core/app_export.dart';

// ignore: must_be_immutable
class ThirtyItemWidget extends StatelessWidget {
  ThirtyItemWidget(
    this.thirtyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtyItemModel thirtyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 3.v,
          right: 5.h,
          bottom: 3.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          thirtyItemModelObj.pentagonoutlineshapeFour!.value,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 15.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgPentagonOutlineShape,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected: (thirtyItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.whiteA700,
        selectedColor: appTheme.whiteA700,
        shape: (thirtyItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.whiteA700.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  13.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black900,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  13.h,
                ),
              ),
        onSelected: (value) {
          thirtyItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
