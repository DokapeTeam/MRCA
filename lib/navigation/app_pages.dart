import 'package:get/get.dart';
import 'package:getx_flutter_project_template/bindings/home_bindings.dart';
import 'package:getx_flutter_project_template/bindings/sign_in_bindings.dart';
import 'package:getx_flutter_project_template/middlewares/auth_guard.dart';
import 'package:getx_flutter_project_template/views/chat/chat_screen.dart';
import 'package:getx_flutter_project_template/views/home/home.dart';

import '../views/sign_in/sign_in.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const Home(),
      binding: HomeBindings(),
      middlewares: [
        AuthGuard(),
      ],
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignIn(),
      binding: SignInBindings(),
    ),
    GetPage(name: AppRoutes.signUp, page: () => throw Exception()),
    GetPage(name: AppRoutes.chat, page: () => const ChatScreen())
  ];
}
