import 'package:flutter/foundation.dart';
import 'package:firebase_admin_app_flutter/models/order_model.dart';
import '../auth/auth_service.dart';
import '../db/db_helper.dart';

class OrderProvider extends ChangeNotifier {
  List<OrderModel> orderList = [];

  getAllOrders() {
    DbHelper.getAllOrders().listen((event) {
      orderList = List.generate(event.docs.length,
              (index) => OrderModel.fromJson(event.docs[index].data()));
      notifyListeners();
    });
  }

  OrderModel getOrderById(String id) =>
      orderList.firstWhere((element) => element.orderId == id);

}
