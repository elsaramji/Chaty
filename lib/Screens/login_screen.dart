// Screens/login_screen.dart
import 'package:massage/Screens/register_screen.dart';
import 'package:massage/models/user_model.dart';

import '../Screens/screen_box.dart';

import '../widgets/logo_bulider.dart';
import '../widgets/normal_filed.dart';
import 'package:flutter/material.dart';
import '../widgets/pasword_filed.dart';
import '../widgets/decortion_init.dart';
import '../widgets/button_elevated.dart';
import 'package:massage/logic/valiedtor.dart';
import 'package:massage/widgets/navgitor_auth.dart';
import 'package:massage/logic/login_with_email.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  String? _email;
  String? _password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScreenBox(
      content: Form(
        key: formkey,
        child: ListView(
          children: [
            Decortioninputer.space25,
            const Logobuilder(),
            Decortioninputer.space25,
            TextfiledNormal(
              onChanged: (data) {
                _email = data;
              },
              onValied: (value) => Valiedtor.emailValied(value),
              title: "email",
            ),
            Decortioninputer.space12,
            TextfiledPassword(
              onChanged: (data) {
                _password = data;
              },
              onValied: (value) => Valiedtor.passwordValied(value),
            ),
            Decortioninputer.space12,
            NavigetorAuth(
              qusetion: "Don't have an account?",
              answer: " Register.",
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ResgisterScreen();
                }));
              },
            ),
            Decortioninputer.space25,
            CustomElevatedButton(
              title: "Login",
              onPressed: () async {
                await LoginWithEmail().loginWithEmail(context,
                    formkey: formkey, email: _email, password: _password);
              },
            ),
          ],
        ),
      ),
    );
  }
}
