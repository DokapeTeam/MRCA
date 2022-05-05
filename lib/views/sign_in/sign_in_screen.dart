import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_project_template/constants.dart';
import 'package:getx_flutter_project_template/navigation/app_pages.dart';
import 'package:getx_flutter_project_template/views/sign_in/sign_in_controller.dart';

class SignIn extends GetView<SignInController> {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('You\'re not Peter Parker'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await controller.saveToken(Constants.token);
          Get.offAllNamed(AppRoutes.home);
        },
        label: const Text('Sign In'),
      ),
    );
  }
}
