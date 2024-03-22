import 'package:flutter/material.dart';
import 'package:cake_order/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome1,
      activeIcon: ImageConstant.imgHome1,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPentagonOutlineShape,
      activeIcon: ImageConstant.imgPentagonOutlineShape,
      title: "lbl_exploreore".tr,
      type: BottomBarEnum.Exploreore,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPentagonOutlineShape,
      activeIcon: ImageConstant.imgPentagonOutlineShape,
      title: "lbl_like".tr,
      type: BottomBarEnum.Like,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPentagonOutlineShape,
      activeIcon: ImageConstant.imgPentagonOutlineShape,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.v,
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 39.adaptSize,
                    width: 39.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: SizedBox(
                height: 57.v,
                width: 42.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].activeIcon,
                      height: 39.adaptSize,
                      width: 39.adaptSize,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        right: 3.h,
                        bottom: 18.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 38.v,
                        ),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: appTheme.black900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Exploreore,
  Like,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
