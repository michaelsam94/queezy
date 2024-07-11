import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

enum SignUpError {
  weakPassword,
  emailAlreadyInUse,
}

class AuthService {
  final _auth = FirebaseAuth.instance;

  User? getUser() {
    return _auth.currentUser;
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String username,
    required VoidCallback onComplete,
    required Function(SignUpError) onError,
  }) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) async {
        User? user = _auth.currentUser;
        if (user != null) {
          await FirebaseFirestore.instance
              .collection('users')
              .doc(user.uid)
              .set({
            'uid': user.uid,
            'email': email,
            'username': username,
          });
          onComplete();
        }
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        onError(SignUpError.weakPassword);
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        onError(SignUpError.emailAlreadyInUse);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signIn(
      {required String email,
      required String password,
      required VoidCallback onComplete,
      required VoidCallback onError}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      onComplete();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        onError();
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        onError();
      } else {
        print('email or password or both not correct');
        onError();
      }
    }
  }

  logout() async {
    await _auth.signOut();
  }
}
