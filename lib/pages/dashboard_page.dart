import 'package:firebase_admin_app_flutter/auth/auth_service.dart';
import 'package:firebase_admin_app_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoardPage extends StatefulWidget {
  static const String routeName = '/';

  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Dashboard', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              AuthService.logout().then((value) => context.goNamed(LoginPage.routeName));
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('Dashboard Page'))
          ],
        ),
      ),
    );
  }
}
