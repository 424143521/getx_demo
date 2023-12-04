import 'package:get/get.dart';
import '../pages/tabs.dart';
import '../pages/shop.dart';
import '../pages/search.dart';
import '../binding/shop.dart';
import '../binding/search.dart';
import '../middlewares/shopMiddleware.dart';

class AppPage {
  static final routes = [
    GetPage(name: "/", page: () => const Tabs()),
    GetPage(
        name: "/shop",
        page: () => const ShopPage(),
        binding: ShopControllerBinding(),

        middlewares: [ShopMiddleWare()]),//中间件配置，用户有权限登陆跳转登陆页面，没权限登陆跳转注册页面
    GetPage(
        name: "/search",
       /* binding: BindingsBuilder(() { // 一种更加方便的写法
          Get.put(HomeController());
        }),*/
        binding: SearchControllerBinding(),
        page: () => const SearchPage()),
  ];
}
