import 'package:cloud_firestore/cloud_firestore.dart';

class Account {
  String? userId;
  String? firstName;
  String? lastName;
  String? email;
  String? userType;
  String? filePath;

  Account(
      {
      this.email,
      this.firstName,
      this.lastName,
      this.userId,
      this.userType});

  factory Account.fromDocument(DocumentSnapshot doc) {
    return Account(
      email: doc['email'],
      
      firstName: doc['firstName'],
      lastName: doc['lastName'],
      userId: doc['userId'],
      userType: doc['userType'],
    );
  }
}
