import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:firebase_admin_app_flutter/pages/order_details_Page.dart';
import 'package:firebase_admin_app_flutter/utils/helper_functions.dart';

import '../providers/order_provider.dart';
import '../utils/constants.dart';

class OrderPage extends StatelessWidget {
  static const String routeName = 'order';
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orders'),),
      body: Consumer<OrderProvider>(
        builder: (context, provider, child) => buildListView(provider),
      ),
    );
  }

  ListView buildListView(OrderProvider provider) {
    return ListView.builder(
        itemCount: provider.orderList.length,
        itemBuilder: (context, index) {
          final order = provider.orderList[index];
          return ListTile(
            onTap: () => context.goNamed(OrderDetailsPage.routeName, extra: order.orderId),
            title: Text(getFormattedDate(order.orderDate.toDate())),
            subtitle: Text(order.orderId),
            trailing: Text('$currencySymbol${order.totalAmount}'),

          );
        },
      );
  }
}
