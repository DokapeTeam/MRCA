import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_project_template/views/chat/chat_screen.dart';
import 'package:getx_flutter_project_template/views/home/components/chat_item.dart';
import 'package:getx_flutter_project_template/views/home/home_controller.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
          Icon(
            Icons.more_vert,
            color: Colors.blue,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ChatItem(
              avatar: 'assets/png/img.png',
              userName: 'Ben Nguyen',
              lastMessage: 'Alo alo ',
              onClick: () {
                Get.to(const ChatScreen());
              },
            ),
            ChatItem(
              avatar: 'assets/png/avatar.png',
              userName: 'Lam Green',
              lastMessage: 'Alo ban gi oi ',
              onClick: () {
                Get.to(const ChatScreen());
              },
            ),
            ChatItem(
              avatar: 'assets/png/img_1.png',
              userName: 'Tống Toảng Chần',
              lastMessage: 'Đang làm gì đó?',
              onClick: () {
                Get.to(const ChatScreen());
              },
            ),
            ChatItem(
              avatar: 'assets/png/img_2.png',
              userName: 'Đỗ Đức Phú',
              lastMessage: 'Netflix 25k',
              onClick: () {
                Get.to(const ChatScreen());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: controller.selectedIndex,
      onTap: (value) {
        controller.setSelectedIndex(value);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage('assets/png/avatar.png'),
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
