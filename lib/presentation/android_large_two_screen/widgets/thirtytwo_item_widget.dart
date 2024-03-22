import '../models/thirtytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:cake_order/core/app_export.dart';

// ignore: must_be_immutable
class ThirtytwoItemWidget extends StatelessWidget {
  ThirtytwoItemWidget(
    this.thirtytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtytwoItemModel thirtytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 3.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          thirtytwoItemModelObj.kg!.value,
          style: TextStyle(
            color: (thirtytwoItemModelObj.isSelected?.value ?? false)
                ? appTheme.gray200
                : appTheme.black900,
            fontSize: 15.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: (thirtytwoItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.whiteA700,
        selectedColor: appTheme.black900,
        shape: (thirtytwoItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black900,
                  width: 1.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black900,
                  width: 1.h,
                ),
              ),
        onSelected: (value) {
          thirtytwoItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
