import 'package:flutter/material.dart';
import './routers/routers.dart';

import 'package:get/get.dart';

import './binding/binding.dart';
import 'middlewares/MiddleWare.dart';
import 'middlewares/shopMiddleware.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //要把GetMaterialApp 作为顶层
    return GetMaterialApp(
      ///全局中间件
      /* routingCallback: (routing) {
        if(routing.current == '/user') {
          openAds();
        }
      },*/
      ///也可以使用API来附加Middleware观察器，方便抽离。
      navigatorObservers: [ // 基于这个来观察路由变化
        GetObserver(MiddleWare.observer as Function(Routing? p1)?), // HERE !!!
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      ///如果不写这一步那么GetX将无法找到HomeController控制器
      initialBinding: AllControllerBinding(), //全局绑定GetxController，不是全局的在GetPage中设置可以在项目初始化时把所有需要进行状态管理到控制器进行统一初始化，这样配置就省去了Get.put(CountController());这一步
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
          )),
      /// 初始路径
      initialRoute: "/",
      ///404页面
      // unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      defaultTransition: Transition.rightToLeft,//配置默认动画
      getPages:AppPage.routes,//配置路由，已经抽离出去
    );
  }
}
