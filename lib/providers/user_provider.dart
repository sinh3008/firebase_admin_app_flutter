import 'package:flutter/foundation.dart';

import '../db/db_helper.dart';
import '../models/app_user.dart';


class UserProvider extends ChangeNotifier {
  List<AppUser> userList = [];

  getAllUsers() {
    DbHelper.getAllUsers().listen((event) {
      userList = List.generate(event.docs.length,
              (index) => AppUser.fromJson(event.docs[index].data()));
      notifyListeners();
    });
  }
}
