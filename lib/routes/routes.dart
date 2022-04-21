import 'package:flutter/cupertino.dart';
import 'package:realtime_chat/pages/chat_page.dart';
import 'package:realtime_chat/pages/loading_page.dart';
import 'package:realtime_chat/pages/login_page.dart';
import 'package:realtime_chat/pages/register_page.dart';
import 'package:realtime_chat/pages/users_page.dart';
import 'package:realtime_chat/pages/welcome_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'welcome': (_) => WelcomePage(),
  'register': (_) => RegisterPage(),
  'login': (_) => LoginPage(),
  'users': (_) => UsersPage(),
  'chat': (_) => ChatPage(),
  'loading': (_) => LoadingPage()
};
