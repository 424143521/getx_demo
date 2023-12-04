import 'package:get/get.dart';

class CounterController extends GetxController{
    RxInt counter=0.obs;

    void inc(){
      counter.value++;
      update();//必须要update数据才能更新到view上
    }
    void dec(){
      counter.value--;
      update();
    }
}