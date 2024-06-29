// Screens/register_screen.dart

import 'package:massage/Screens/login_screen.dart';

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
  static const String routeName = "ResgisterScreen";
  String? _email;
  String? _name;
  String? _password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override

  /// Builds a widget tree that represents the registration screen.
  ///
  /// The widget tree consists of a [Form] widget that contains a [ListView]
  /// widget. The [ListView] widget contains various child widgets such as
  /// [Decortioninputer], [Logobuilder], [TextfiledNormal], [TextfiledPassword],
  /// [NavigetorAuth], and [CustomElevatedButton].
  ///
  /// The [TextfiledNormal] and [TextfiledPassword] widgets have callback functions
  /// [onChanged] and [onValied] respectively. The [onChanged] function is called
  /// when the text in the widget changes, and the [onValied] function is called to
  /// validate the text.
  ///
  /// The [NavigetorAuth] widget has a callback function [onTap] that is called
  /// when the widget is tapped. The [onTap] function pops the current route from
  /// the [Navigator] stack.
  ///
  /// The [CustomElevatedButton] widget has a callback function [onPressed] that
  /// is called when the button is pressed. The [onPressed] function calls the
  /// [regesterWithEmail] function of the [RegisterWithEmail] class, passing the
  /// [context], [email], [password], and [name] as arguments.
  ///
  /// Returns a [Widget] that represents the registration screen.
  Widget build(BuildContext context) {
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
            CustomElevatedButton(
              onPressed: () async {
                if (formkey.currentState!.validate() &&
                    _email != null &&
                    _password != null &&
                    _name != null) {
                  await RegisterWithEmail(
                          email: _email,
                          password: _password,
                          formkey: formkey,
                          name: _name)
                      .regesterWithEmail(context);

                  Navigator.of(context).popAndPushNamed(LoginScreen.routeName);
                }
              },
              title: "singup",
            ),
          ],
        ),
      ),
    );
  }
}
