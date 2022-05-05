import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_project_template/constants.dart';
import 'package:getx_flutter_project_template/navigation/app_pages.dart';

import '../services/storage_service.dart';

class AuthGuard extends GetMiddleware {
  final StorageService _storageService = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    return _storageService.hasData(Constants.token)
        ? null
        : const RouteSettings(name: AppRoutes.signIn);
  }
}
