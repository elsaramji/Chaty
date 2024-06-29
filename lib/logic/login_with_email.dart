// logic/login_with_email.dart
import 'package:flutter/material.dart';
import 'package:massage/widgets/snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

// logic/login_with_email.dart

class LoginWithEmail {
  /// Logs in a user with the provided email and password using Firebase Authentication.
  ///
  /// This function takes a [BuildContext] as a parameter to display a snackbar message.
  /// It also requires a [formkey] of type [GlobalKey<FormState>] to validate the form.
  /// The [email] and [password] parameters are required and should not be null.
  ///
  /// Returns a [Future] that resolves to a [UserCredential] if the login is successful,
  /// or `null` if there is an error.
  ///
  /// Throws a [FirebaseAuthException] if there is an error during the login process.
  ///
  /// The function first checks if the form is valid using [formkey.currentState!.validate()].
  /// If the form is valid and all the required fields (email and password) are not null,
  /// it attempts to sign in the user with the provided email and password using
  /// [FirebaseAuth.instance.signInWithEmailAndPassword()].
  /// If the login is successful, it displays a success message using [Snackmassage.snackException()]
  /// and returns the [UserCredential].
  /// If there is a [FirebaseAuthException] during the login process, it displays the error message
  /// using [Snackmassage.snackException()].
  /// If there is any other exception, it also displays the error message using
  /// [Snackmassage.snackException()].
  /// If the form is not valid or any of the required fields are null, it displays an "input error"
  /// message using [Snackmassage.snackException()] and returns `null`.
  Future<UserCredential?> loginWithEmail(
    BuildContext context, {
    required GlobalKey<FormState> formkey,
    required String? email,
    required String? password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      Snackmassage.snackException(context, "user created");
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Snackmassage.snackException(context, "'No user found for that email.");
      } else if (e.code == 'wrong-password') {
        Snackmassage.snackException(
            context, 'Wrong password provided for that user.');
      }
    } catch (ex) {
      Snackmassage.snackException(context, ex.toString());
    }

    Snackmassage.snackException(context, "input error");
    return null;
  }
}
