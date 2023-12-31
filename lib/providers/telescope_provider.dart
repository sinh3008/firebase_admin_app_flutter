import 'dart:io';

import 'package:firebase_admin_app_flutter/db/db_helper.dart';
import 'package:firebase_admin_app_flutter/models/telescope.dart';
import 'package:firebase_admin_app_flutter/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../models/brand.dart';
import '../models/image_model.dart';

class TelescopeProvider extends ChangeNotifier {
  List<Brand> brandList = [];

  // them moi brand
  Future<void> addBrand(String name) {
    final brand = Brand(name: name);
    return DBHelper.addBrand(brand);
  }

  //lay danh sach tat ca brand
  getAllBrands() {
    DBHelper.getAllBrands().listen((snapshot) {
      brandList = List.generate(snapshot.docs.length,
          (index) => Brand.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  Future<void> addTelescope(Telescope telescope) {
    return DBHelper.addTelescope(telescope);
  }

  //upload brand len firebase
  Future<ImageModel> uploadImage(String imageLocalPath) async {
    final String imageName = 'image_${DateTime.now().millisecondsSinceEpoch}';

    final photoRef = FirebaseStorage.instance
        .ref()
        .child('$telescopeImageDirectory$imageName');

    final uploadTask = photoRef.putFile(File(imageLocalPath));

    final snapshot = await uploadTask.whenComplete(() => null);

    final url = await snapshot.ref.getDownloadURL();

    return ImageModel(
        imageName: imageName,
        directoryName: telescopeImageDirectory,
        downloadUrl: url);
  }
}
