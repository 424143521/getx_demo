import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/list.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  //实例化listController
  ListController listController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [        
          ElevatedButton(onPressed: (){               
               Get.snackbar("提示", "增加数据成功",duration: const Duration(seconds: 1));
               listController.add("我是一个列表");
          }, child: const Text("给user list里面增加数据")),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Get.isDarkMode ? Colors.black12 : Colors.white,
                  height: 200,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined,
                            color:
                            Get.isDarkMode ? Colors.white : Colors.black),
                        title: Text("白天模式",
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black)),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny,
                            color:
                            Get.isDarkMode ? Colors.white : Colors.black),
                        title: Text("黑夜模式",
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black)),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          Get.back();
                        },
                      )
                    ],
                  ),
                ));
              },
              child: const Text("显示 BottomSheet")),
          ElevatedButton(
              onPressed: () {
                Get.snackbar("Snackbar 标题", "欢迎使用Snackbar");
              },
              child: Text("显示 Snackbar")),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "提示",
                    middleText: "您确定退出登录？",
                    confirm: ElevatedButton(
                        onPressed: () {
                          print("确定");
                          Get.back();
                        },
                        child: const Text("确定")),
                    cancel: ElevatedButton(
                        onPressed: () {
                          print("取消");
                          Get.back();
                        },
                        child: const Text("取消")));
              },
              child: const Text("显示 默认的Dialog"))
        ],
      ),
    );
  }
}