import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class FibaBesSigin {
  static final _auth = FirebaseAuth.instance;

  static Future<User?> siginIN(String email,String password) async {
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    }catch(e) {
      debugPrint("error userCredential $e");
    }
  }
}