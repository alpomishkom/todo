import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class FibaBesLogin {
  static final _auth = FirebaseAuth.instance;

  static Future<User?> register(String email,String password) async {
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    }catch(e) {
      debugPrint("error userCredential $e");
    }
  }
}