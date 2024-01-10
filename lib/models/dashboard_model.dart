import 'package:flutter/material.dart';
import 'package:firebase_admin_app_flutter/pages/add_telescope_page.dart';
import 'package:firebase_admin_app_flutter/pages/brand_page.dart';
import 'package:firebase_admin_app_flutter/pages/order_page.dart';
import 'package:firebase_admin_app_flutter/pages/user_list_page.dart';
import 'package:firebase_admin_app_flutter/pages/view_telescope_page.dart';

import '../pages/bloc_telescope.dart';

class DashboardModel {
  final String title;
  final IconData iconData;
  final String routeName;

  const DashboardModel({
    required this.title,
    required this.iconData,
    required this.routeName,
  });
}

const List<DashboardModel> dashboardModelList = [
  DashboardModel(title: 'Add Telescope', iconData: Icons.add, routeName: AddTelescopePage.routeName,),
  DashboardModel(title: 'View Telescope', iconData: Icons.inventory, routeName: BlocTelescope.routeName,),
  DashboardModel(title: 'Brands', iconData: Icons.category, routeName: BrandPage.routeName,),
  DashboardModel(title: 'Orders', iconData: Icons.monetization_on, routeName: OrderPage.routeName,),
  DashboardModel(title: 'Users', iconData: Icons.supervised_user_circle_sharp, routeName: UserListPage.routeName,),
];