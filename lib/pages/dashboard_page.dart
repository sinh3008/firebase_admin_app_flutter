import 'package:firebase_admin_app_flutter/auth/auth_service.dart';
import 'package:firebase_admin_app_flutter/customwidgets/dashboard_item_view.dart';
import 'package:firebase_admin_app_flutter/models/dashboard_model.dart';
import 'package:firebase_admin_app_flutter/pages/login_page.dart';
import 'package:firebase_admin_app_flutter/providers/telescope_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class DashBoardPage extends StatefulWidget {
  static const String routeName = '/';

  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  @override
  void didChangeDependencies() {
    Provider.of<TelescopeProvider>(context, listen: false).getAllBrands();
    Provider.of<TelescopeProvider>(context, listen: false).getAllTelescopes();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              AuthService.logout()
                  .then((value) => context.goNamed(LoginPage.routeName));
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              width: width,
              height: height * 0.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Admin',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        !.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    'Welcome Back',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                    !.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final model = dashboardModelList[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: DashboardItemView(
                      model: model,
                      onPress: (route) {
                        context.goNamed(route);
                      },
                    ),
                  );
                },
                itemCount: dashboardModelList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
