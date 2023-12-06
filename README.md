GetX 是一个在Flutter上的轻量级且强大的解决方案，为我们提供了高效的状态管理、智能的依赖注入和便捷的路由管理。GetX的三个基本原则是性能、效率和结构。GetX专注于性能和最小的资源消耗，其打包后的apk大小和运行时的内存占用与其他状态管理插件相当。GetX的语法简洁且高效，可以大大缩短开发时间。同时，GetX可以将界面、逻辑、依赖和路由完全解耦，使代码更清晰，更易于维护。

GetX并不臃肿，反而非常轻量。如果你只使用状态管理，那么只有状态管理模块会被编译，其他未使用的部分不会被编译到你的代码中。尽管GetX拥有众多功能，但这些功能都在独立的容器中，只有在使用后才会启动。

GetX拥有一个庞大的生态系统，可以在Android、iOS、Web、Mac、Linux、Windows和服务器上运行相同的代码。通过Get Server，你甚至可以在后端完全重用前端的代码。

里面包括了

*GetX的各种配置，中间件，导航，控制器等等
* Dialog，Snackbar，BottomSheet以及主题改变
* GetX的路由管理
* GetX的状态管理
* GetxController生命周期
  
dependencies:

get: ^4.6.5



Get.toNamed("/login");跳转到命名路由

Get.to(Home());`to`接收一个页面组件

Get.toNamed("/shop",arguments: {

"id":20

});//`arguments`传参。**发送任何参数都可以接收**，不论是什么类型！甚至是类的实例！

Get.offAllNamed("/NextScreen?device=phone&id=111&name=liang");//问号传参，只能接收字符串

Get.parameters['id']接受传值 

Get.back();返回上一层

返回到根Get.offAll( const Tabs(index: 4));该方法会清空我们之前打开过的页面，只留下新的页面

Get.off(NextScreen());它会替拿当新页面换掉当前页面，但没有返回上一个页面的选项（用于闪屏页，登录页面等）。

Controller controller = Get.put(Controller());

Controller controller = Get.find();
