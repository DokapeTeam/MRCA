import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_project_template/app.dart';
import 'package:getx_flutter_project_template/services/storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  // FlutterNativeSplash.removeAfter((BuildContext context) => {});
  runApp(const TemplateApp());
}
