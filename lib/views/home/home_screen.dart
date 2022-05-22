import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_project_template/views/home/components/chat_item.dart';
import 'package:getx_flutter_project_template/views/home/home_controller.dart';

import '../../navigation/app_pages.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My chat '),
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [1, 2, 3, 4, 5].map((e) {
            return ChatItem(
              onClick: () {
                Get.offAllNamed(AppRoutes.chat);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
