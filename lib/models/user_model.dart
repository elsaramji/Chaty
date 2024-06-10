// models/user_model.dart

import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String _email;
  final String _name;
  final String _uid;

  UserModel({required String email, required String name, required String uid})
      : _email = email,
        _name = name,
        _uid = uid;

   get email => _email;
   get name => _name;
   get uid => _uid;

  factory UserModel.fromFirebaseUser(UserCredential user) {
    return UserModel(
      email: user.user!.email!,
      name: user.user!.displayName!,
      uid: user.user!.uid,
    );
  }
}
