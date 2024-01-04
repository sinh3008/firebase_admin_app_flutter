import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_admin_app_flutter/providers/order_provider.dart';
import 'package:firebase_admin_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderDetailsPage extends StatelessWidget {
  final String orderId;
  static const String routeName = 'order_details';

  const OrderDetailsPage({
    Key? key,
    required this.orderId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final order = Provider.of<OrderProvider>(context, listen: false)
        .getOrderById(orderId);
    return Scaffold(
      appBar: AppBar(
        title: Text(orderId),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            title: Text(order.appUser.email),
            subtitle: const Text('Customer info'),
          ),
          ListTile(
            title: Text(order.orderStatus),
            subtitle: const Text('Order Status'),
          ),
          ListTile(
            title: Text('$currencySymbol${order.totalAmount}'),
            subtitle: const Text('Order Amount'),
          ),
          ...order.itemDetails
              .map((e) => ListTile(
                    leading: CircleAvatar(
                      child: CachedNetworkImage(
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        imageUrl: e.imageUrl,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    title: Text(e.telescopeModel),
                    trailing: Text('${e.quantity}x$currencySymbol${e.price}'),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
