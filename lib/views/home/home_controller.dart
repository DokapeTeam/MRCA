import 'package:get/get.dart';
import 'package:getx_flutter_project_template/constants.dart';
import 'package:getx_flutter_project_template/services/storage_service.dart';

class HomeController extends GetxController {
  final storage = Get.find<StorageService>();

  Future removeToken() async => storage.remove(Constants.token);
}
