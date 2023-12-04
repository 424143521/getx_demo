import 'package:get/get.dart';

import '../controllers/counter.dart';
import '../controllers/list.dart';

/***
 * Get.put()： 不使用控制器实例也会被创建
    Get.lazyPut()： 懒加载方式创建实例，只有在使用时才创建
    Get.putAsync()： Get.put() 的异步版版本
    Get.create()： 每次使用都会创建一个新的实例
 */
///可以将路由、状态管理器、依赖管理器集成到一块。
class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut<CounterController>(() => CounterController());//懒加载方式创建实例，只有在使用时才创建
    Get.lazyPut<ListController>(() => ListController());
  }

}