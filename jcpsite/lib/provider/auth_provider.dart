import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jcpsite/models/account.dart';
import 'dart:convert';

class AuthProvider {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  AuthProvider({required this.firebaseAuth, required this.firebaseFirestore});
  Stream<User?> get authState => firebaseAuth.userChanges();
  Stream<Account> get currentAccount =>
      getCurrentAccount(firebaseAuth.currentUser!);

  // idTokenChanges();
  //SIGN UP METHOD
  Future<String?> signUp(
      {String? email,
      String? password,
      String? firstName,
      String? lastName}) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(email: email!, password: password!)
          .whenComplete(() async {
        await createUserInFirestore(firstName, lastName, email);
      });

      return "Signed up!";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  createUserInFirestore(
    String? firstName,
    String? lastName,
    String? email,
  ) async {
    await firebaseFirestore
        .collection('users')
        .doc(firebaseAuth.currentUser!.uid)
        .set({
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'userType': 'ADMIN',
      'userId': firebaseAuth.currentUser!.uid,
    }).whenComplete(() {
      print("User Created on firestore");
    }).catchError((e) {
      print(e);
    });
  }

  verifyEmail() async {
    await firebaseAuth.currentUser!.sendEmailVerification();
  }

  //SIGN IN METHOD
  Future<String?> signIn({String? email, String? password}) async {
    try {
      await firebaseAuth
          .signInWithEmailAndPassword(email: email!, password: password!)
          .whenComplete(() => print("Logged in"));

      return "Signed in!";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN OUT METHOD
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<void> resetPassword(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Stream<Account> getCurrentAccount(User currentUser) async* {
    if (currentUser != null) {
      DocumentSnapshot doc = await firebaseFirestore
          .collection('users')
          .doc(currentUser.uid)
          .get();
      yield Account.fromDocument(doc);
    }
  }
}
