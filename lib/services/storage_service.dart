import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  GetStorage get _storage => GetStorage();

  Future<StorageService> init() async {
    await GetStorage.init();
    return this;
  }

  bool hasData(String key) => _storage.hasData(key);

  Future write(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  Future remove(String key) async => await _storage.remove(key);
}
