// ignore_for_file: avoid_print

import 'package:firebase_admin_app_flutter/bloc/brand_bloc.dart';
import 'package:firebase_admin_app_flutter/bloc/telescope_bloc.dart';
import 'package:firebase_admin_app_flutter/pages/bloc_telescope.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:firebase_admin_app_flutter/auth/auth_service.dart';
import 'package:firebase_admin_app_flutter/pages/add_telescope_page.dart';
import 'package:firebase_admin_app_flutter/pages/brand_page.dart';
import 'package:firebase_admin_app_flutter/pages/dashboard_page.dart';
import 'package:firebase_admin_app_flutter/pages/description_page.dart';
import 'package:firebase_admin_app_flutter/pages/order_details_Page.dart';
import 'package:firebase_admin_app_flutter/pages/order_page.dart';
import 'package:firebase_admin_app_flutter/pages/telescope_details_page.dart';
import 'package:firebase_admin_app_flutter/pages/user_list_page.dart';
import 'package:firebase_admin_app_flutter/pages/view_telescope_page.dart';
import 'package:firebase_admin_app_flutter/providers/order_provider.dart';
import 'package:firebase_admin_app_flutter/providers/telescope_provider.dart';
import 'package:firebase_admin_app_flutter/providers/user_provider.dart';
import 'firebase_options.dart';
import 'pages/login_page.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (message.notification != null) {
    print('You have a notification: ${message.notification!.title}');
  }
  print('Data: ${message.data['value']}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await FirebaseMessaging.instance.subscribeToTopic('order');
  runApp(
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (context) => TelescopeProvider()),
    //     ChangeNotifierProvider(create: (context) => OrderProvider()),
    //     ChangeNotifierProvider(create: (context) => UserProvider()),
    //   ],
    //   child: MyApp(),
    // ),
    MultiBlocProvider(
      providers: [
        BlocProvider<TelescopeBloc>(
          create: (BuildContext context) {
            return TelescopeBloc();
          },
        ),
        BlocProvider(
          create: (context) => BrandBloc(),
        ),
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
      title: 'Flutter Demo',
      builder: EasyLoading.init(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }

  final _router = GoRouter(
      initialLocation: DashboardPage.routeName,
      redirect: (context, state) {
        if (AuthService.currentUser == null) {
          return LoginPage.routeName;
        }
        return null;
      },
      routes: [
        GoRoute(
          name: DashboardPage.routeName,
          path: DashboardPage.routeName,
          builder: (context, state) => const DashboardPage(),
          routes: [
            GoRoute(
              name: AddTelescopePage.routeName,
              path: AddTelescopePage.routeName,
              builder: (context, state) => const AddTelescopePage(),
            ),
            GoRoute(
                name: BlocTelescope.routeName,
                path: BlocTelescope.routeName,
                builder: (context, state) => const BlocTelescope(),
                routes: [
                  // GoRoute(
                  //   name: TelescopeDetailsPage.routeName,
                  //   path: TelescopeDetailsPage.routeName,
                  //   builder: (context, state) => TelescopeDetailsPage(
                  //     id: state.extra! as String,
                  //   ),
                  //   // routes: [
                  //   //   GoRoute(
                  //   //     name: DescriptionPage.routeName,
                  //   //     path: DescriptionPage.routeName,
                  //   //     builder: (context, state) => DescriptionPage(id: state.extra! as String,),
                  //   //   ),
                  //   // ]
                  // ),
                  GoRoute(
                    name: TelescopePageBloc.routeName,
                    path: TelescopePageBloc.routeName,
                    builder: (context, state) => const TelescopePageBloc(),
                    // routes: [
                    //   GoRoute(
                    //     name: DescriptionPage.routeName,
                    //     path: DescriptionPage.routeName,
                    //     builder: (context, state) => DescriptionPage(id: state.extra! as String,),
                    //   ),
                    // ]
                  ),
                ]),
            GoRoute(
              name: BrandPage.routeName,
              path: BrandPage.routeName,
              builder: (context, state) => const BrandPage(),
            ),
            GoRoute(
              name: UserListPage.routeName,
              path: UserListPage.routeName,
              builder: (context, state) => const UserListPage(),
            ),
            GoRoute(
                name: OrderPage.routeName,
                path: OrderPage.routeName,
                builder: (context, state) => const OrderPage(),
                routes: [
                  GoRoute(
                    name: OrderDetailsPage.routeName,
                    path: OrderDetailsPage.routeName,
                    builder: (context, state) =>
                        OrderDetailsPage(
                          orderId: state.extra! as String,
                        ),
                  ),
                ]),
          ],
        ),
        GoRoute(
          name: LoginPage.routeName,
          path: LoginPage.routeName,
          builder: (context, state) => const LoginPage(),
        ),
      ]);
}
