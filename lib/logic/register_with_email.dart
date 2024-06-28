// logic/register_with_email.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:massage/widgets/snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

// logic/register_with_email.dart

class RegisterWithEmail {
  String? email;
  String? password;
  String? name;
  final GlobalKey<FormState> formkey;
  RegisterWithEmail(
      {required this.email,
      required this.password,
      required this.formkey,
      required this.name});
    /// Registers a user with the provided email, password, and name using Firebase Authentication.
    ///
    /// This function takes a [BuildContext] as a parameter to display a snackbar message.
    /// It returns a [Future] that resolves to a [UserCredential] if the registration is successful,
    /// or `null` if there is an error.
    ///
    /// Throws a [FirebaseAuthException] if there is an error during the registration process.
    ///
    /// The function first checks if the form is valid using [formkey.currentState!.validate()].
    /// If the form is valid and all the required fields (email, password, and name) are not null,
    /// it creates a new user with the provided email and password using [FirebaseAuth.instance.createUserWithEmailAndPassword()].
    /// If the registration is successful, it updates the display name of the user using [FirebaseAuth.instance.currentUser!.updateDisplayName()].
    /// It then displays a success message using [Snackmassage.snackException()] and returns the [UserCredential].
    /// If there is a [FirebaseAuthException] during the registration process, it displays the error message using [Snackmassage.snackException()].
    /// If there is any other exception, it also displays the error message using [Snackmassage.snackException()].
    /// If the form is not valid or any of the required fields are null, it displays an "error input" message using [Snackmassage.snackException()] and returns `null`.
  Future<UserCredential?> regesterWithEmail(BuildContext context) async {
    if (formkey.currentState!.validate() &&
        email != null &&
        password != null &&
        name != null) {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email!,
          password: password!,
        );

        FirebaseAuth.instance.currentUser!.updateDisplayName(name!);
        Snackmassage.snackException(context, "user created");
        return credential;
      } on FirebaseAuthException catch (e) {
        Snackmassage.snackException(context, e.message.toString());
      } catch (ex) {
        Snackmassage.snackException(context, ex.toString());
      }
    }
    Snackmassage.snackException(context, "error input");
    return null;
  }
}
