import 'package:firebase_admin_app_flutter/db/db_helper.dart';
import 'package:flutter/foundation.dart';

import '../models/brand.dart';

class TelescopeProvider extends ChangeNotifier {
  List<Brand> brandList = [];

  Future<void> addBrand(String name) {
    final brand = Brand(name: name);
    return DBHelper.addBrand(brand);
  }

  getAllBrands() {
    DBHelper.getAllBrands().listen((snapshot) {
      brandList = List.generate(snapshot.docs.length,
          (index) => Brand.fromMap(snapshot.docs[index].data()));
      notifyListeners();
    });
  }
}
