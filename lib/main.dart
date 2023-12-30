import 'package:firebase_admin_app_flutter/auth/auth_service.dart';
import 'package:firebase_admin_app_flutter/pages/add_telescope_page.dart';
import 'package:firebase_admin_app_flutter/pages/brand_page.dart';
import 'package:firebase_admin_app_flutter/pages/dashboard_page.dart';
import 'package:firebase_admin_app_flutter/pages/login_page.dart';
import 'package:firebase_admin_app_flutter/pages/view_telescope_page.dart';
import 'package:firebase_admin_app_flutter/providers/telescope_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TelescopeProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      theme: ThemeData(
        fontFamily: "Muli",
        scaffoldBackgroundColor: const Color(0xff1d1c21),
        appBarTheme: AppBarTheme(
          color: const Color(0xff1d1c21),
          centerTitle: true,
          titleTextStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.black),
          bodyLarge: TextStyle(color: Colors.black),
        ),
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
        routes: [
          GoRoute(
            path: AddTelescopePage.routeName,
            name: AddTelescopePage.routeName,
            builder: (context, state) => const AddTelescopePage(),
          ),
          GoRoute(
            path: ViewTelescopePage.routeName,
            name: ViewTelescopePage.routeName,
            builder: (context, state) => const ViewTelescopePage(),
          ),
          GoRoute(
            path: BrandPage.routeName,
            name: BrandPage.routeName,
            builder: (context, state) => const BrandPage(),
          ),
        ],
      ),
      GoRoute(
        path: LoginPage.routeName,
        name: LoginPage.routeName,
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );
}
