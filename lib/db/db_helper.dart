import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_admin_app_flutter/models/brand.dart';
import 'package:firebase_admin_app_flutter/models/telescope.dart';

class DbHelper {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static const String collectionAdmin = 'Admins';
  static const String collectionTelescope = 'Telescopes';
  static const String collectionBrand = 'Brands';
  static const String collectionUser = 'Users';
  static const String collectionCart = 'MyCartItems';
  static const String collectionOrder = 'Orders';
  static const String collectionRating = 'Ratings';

  static Future<bool> isAdmin(String uid) async {
    final snapshot = await _db.collection(collectionAdmin).doc(uid).get();
    return snapshot.exists;
  }

  static Future<void> addBrand(Brand brand) {
    final doc = _db.collection(collectionBrand).doc();
    brand.id = doc.id;
    return doc.set(brand.toJson());
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllBrands() =>
      _db.collection(collectionBrand).snapshots();

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllTelescopes() =>
      _db.collection(collectionTelescope).snapshots();

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllOrders() =>
      _db.collection(collectionOrder)
          .orderBy('orderDate', descending: true,)
          .snapshots();

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllUsers() =>
      _db.collection(collectionUser).snapshots();

  static Future<void> addTelescope(Telescope telescope) {
    final doc = _db.collection(collectionTelescope).doc();
    telescope.id = doc.id;
    return doc.set(telescope.toJson());
  }

  static Future<void> updateTelescopeField(String id, Map<String, dynamic> map) {
    return _db.collection(collectionTelescope).doc(id)
        .update(map);
  }
}