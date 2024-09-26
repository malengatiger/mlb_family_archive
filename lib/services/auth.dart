import 'package:firebase_auth/firebase_auth.dart';
class AppAuth {
  final FirebaseAuth auth;

  AppAuth(this.auth);

  Future signIn(String email, String password) async {
    var resp = await auth.signInWithEmailAndPassword(email: email, password: password);
    if (resp.user == null) {
      throw Exception("Firebase authentication failed");
    }
  }
}