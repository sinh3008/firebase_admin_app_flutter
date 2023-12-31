import 'package:firebase_admin_app_flutter/db/db_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static User? get currentUser => _auth.currentUser;

  //login in login_page
  static Future<bool> loginAtAdmin(String email, String password) async {
    final credential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    //check uid xem có phải admin không ? vì có thể trùng với user
    return DBHelper.isAdmin(credential.user!.uid);
  }

  //logout
  static Future<void> logout() {
    return _auth.signOut();
  }
}
