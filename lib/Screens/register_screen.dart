// Screens/register_screen.dart
import '../Screens/screen_box.dart';
import 'package:flutter/widgets.dart';
import '../widgets/logo_bulider.dart';
import '../widgets/normal_filed.dart';
import 'package:flutter/material.dart';
import '../widgets/pasword_filed.dart';
import '../widgets/decortion_init.dart';
import '../widgets/button_elevated.dart';
import 'package:massage/logic/valiedtor.dart';
import 'package:massage/widgets/navgitor_auth.dart';
import 'package:massage/logic/register_with_email.dart';

// ignore: must_be_immutable
class ResgisterScreen extends StatelessWidget {
  ResgisterScreen({super.key});

  String? _email;
  String? _name;
  String? _password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var customElevatedButton = CustomElevatedButton(
      onPressed: () async {
        await RegisterWithEmail(
                email: _email,
                password: _password,
                formkey: formkey,
                name: _name)
            .regesterWithEmail(context);
      },
      title: "singup",
    );
    return Form(
      key: formkey,
      child: ScreenBox(
        content: ListView(
          children: [
            Decortioninputer.space25,
            const Logobuilder(),
            Decortioninputer.space25,
            TextfiledNormal(
              onChanged: (data) {
                _name = data;
              },
              onValied: (value) => Valiedtor.nameValied(value),
              title: "name",
            ),
            Decortioninputer.space12,
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
              qusetion: "Already have an account?",
              answer: " return Login.",
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Decortioninputer.space25,
            customElevatedButton,
          ],
        ),
      ),
    );
  }
}
