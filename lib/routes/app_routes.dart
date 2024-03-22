import 'package:get/get.dart';
import '../presentation/android_large_one_container_screen/android_large_one_container_screen.dart';
import '../presentation/android_large_one_container_screen/binding/android_large_one_container_binding.dart';
import '../presentation/android_large_two_screen/android_large_two_screen.dart';
import '../presentation/android_large_two_screen/binding/android_large_two_binding.dart';
import '../presentation/android_large_three_screen/android_large_three_screen.dart';
import '../presentation/android_large_three_screen/binding/android_large_three_binding.dart';
import '../presentation/android_large_four_screen/android_large_four_screen.dart';
import '../presentation/android_large_four_screen/binding/android_large_four_binding.dart';
import '../presentation/android_large_five_screen/android_large_five_screen.dart';
import '../presentation/android_large_five_screen/binding/android_large_five_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String androidLargeOneContainerScreen =
      '/android_large_one_container_screen';

  static const String androidLargeOnePage = '/android_large_one_page';

  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: androidLargeOneContainerScreen,
      page: () => AndroidLargeOneContainerScreen(),
      bindings: [
        AndroidLargeOneContainerBinding(),
      ],
    ),
    GetPage(
      name: androidLargeTwoScreen,
      page: () => AndroidLargeTwoScreen(),
      bindings: [
        AndroidLargeTwoBinding(),
      ],
    ),
    GetPage(
      name: androidLargeThreeScreen,
      page: () => AndroidLargeThreeScreen(),
      bindings: [
        AndroidLargeThreeBinding(),
      ],
    ),
    GetPage(
      name: androidLargeFourScreen,
      page: () => AndroidLargeFourScreen(),
      bindings: [
        AndroidLargeFourBinding(),
      ],
    ),
    GetPage(
      name: androidLargeFiveScreen,
      page: () => AndroidLargeFiveScreen(),
      bindings: [
        AndroidLargeFiveBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => AndroidLargeOneContainerScreen(),
      bindings: [
        AndroidLargeOneContainerBinding(),
      ],
    )
  ];
}
