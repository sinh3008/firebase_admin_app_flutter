import 'package:firebase_admin_app_flutter/auth/auth_service.dart';
import 'package:firebase_admin_app_flutter/pages/dashboard_page.dart';
import 'package:firebase_admin_app_flutter/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }

  final _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: DashBoardPage.routeName,
    redirect: (context, state) {
      if (AuthService.currentUser == null) {
        return LoginPage.routeName;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: DashBoardPage.routeName,
        name: DashBoardPage.routeName,
        builder: (context, state) => const DashBoardPage(),
      ),
      GoRoute(
        path: LoginPage.routeName,
        name: LoginPage.routeName,
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );
}
