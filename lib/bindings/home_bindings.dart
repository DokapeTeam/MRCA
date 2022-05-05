import 'package:get/get.dart';
import 'package:getx_flutter_project_template/views/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
