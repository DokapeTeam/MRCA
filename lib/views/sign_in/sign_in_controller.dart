import 'package:get/get.dart';
import 'package:getx_flutter_project_template/constants.dart';
import 'package:getx_flutter_project_template/services/storage_service.dart';

class SignInController extends GetxController {
  final StorageService _storage = Get.find();

  Future saveToken(String token) async =>
      await _storage.write(Constants.token, token);
}
