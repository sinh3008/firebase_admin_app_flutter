// ignore: unused_import
// ignore_for_file: empty_statements, unused_import, duplicate_ignore, dead_code

import 'package:firebase_admin_app_flutter/bloc/brand_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:firebase_admin_app_flutter/auth/auth_service.dart';
import 'package:firebase_admin_app_flutter/customwidgets/dashboard_item_view.dart';
import 'package:firebase_admin_app_flutter/models/dashboard_model.dart';
import 'package:firebase_admin_app_flutter/pages/login_page.dart';
import 'package:firebase_admin_app_flutter/pages/order_details_Page.dart';
import 'package:firebase_admin_app_flutter/providers/order_provider.dart';
import 'package:firebase_admin_app_flutter/providers/telescope_provider.dart';
import 'package:firebase_admin_app_flutter/providers/user_provider.dart';

import '../bloc/telescope_bloc.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/';

  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  Future<void> setupInteractedMessage() async {
    RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    if (message.data['key'] == 'neworder') {
      final orderId = message.data['value'];
      EasyLoading.show(status: 'Redirecting...');
      Future.delayed(const Duration(seconds: 3), () {
        EasyLoading.dismiss();
        context.goNamed(OrderDetailsPage.routeName, extra: orderId);
      });
    }
  }

  @override
  void initState() {
    setupInteractedMessage();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // Provider.of<TelescopeProvider>(context, listen: false).getAllBrands();
    // Provider.of<TelescopeProvider>(context, listen: false).getAllTelescopes();
    // Provider.of<OrderProvider>(context, listen: false).getAllOrders();
    // Provider.of<UserProvider>(context, listen: false).getAllUsers();
    context.read<TelescopeBloc>().add(const TelescopeEvent.getAllTelescopes());
    context.read<BrandBloc>().add(const BrandEvent.getAllBrand());

    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          actions: [
            IconButton(
              onPressed: () {
                AuthService.logout()
                    .then((value) => context.goNamed(LoginPage.routeName));
              },
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: dashboardModelList.length,
          itemBuilder: (context, index) {
            final model = dashboardModelList[index];
            return DashboardItemView(
              model: model,
              onPress: (route) {
                context.goNamed(route);
              },
            );
          },
        ));
    ;
  }
}
