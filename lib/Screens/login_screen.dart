// Screens/login_screen.dart
import 'package:massage/Screens/contact_screen.dart';
import 'package:massage/Screens/register_screen.dart';
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
  static const String routeName = "login";
  LoginScreen({super.key});
  String? _email;
  String? _password;
  GlobalKey<FormState> loginformkey = GlobalKey<FormState>();

  @override

  /// Builds a widget tree that represents the login screen.
  ///
  /// The widget tree consists of a [ScreenBox] widget that contains a [Form]
  /// widget. The [Form] widget has a [ListView] as its child, which in turn
  /// contains various child widgets such as [Decortioninputer], [Logobuilder],
  /// [TextfiledNormal], [TextfiledPassword], [NavigetorAuth], and
  /// [CustomElevatedButton].
  ///
  /// The [TextfiledNormal] and [TextfiledPassword] widgets have callback functions
  /// [onChanged] and [onValied] respectively. The [onChanged] function is called
  /// when the text in the widget changes, and the [onValied] function is called to
  /// validate the text.
  ///
  /// The [NavigetorAuth] widget has a callback function [onTap] that is called
  /// when the widget is tapped. The [onTap] function pushes a new route to the
  /// [Navigator] with a [ResgisterScreen] widget.
  ///
  /// The [CustomElevatedButton] widget has a callback function [onPressed] that
  /// is called when the button is pressed. The [onPressed] function calls the
  /// [loginWithEmail] function of the [LoginWithEmail] class, passing the
  /// [context], [formkey], [email], and [password] as arguments.
  ///
  /// The [Navigator.popAndPushNamed] function is called to pop the current route
  /// from the [Navigator] stack and push a new route with the [ContactScreen.routeName].
  ///
  /// Returns a [Widget] that represents the login screen.
  Widget build(BuildContext context) {
    return ScreenBox(
      content: Form(
        key: loginformkey,
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
                  if (loginformkey.currentState!.validate() &&
                      _email != null &&
                      _password != null) {
                    await LoginWithEmail().loginWithEmail(context,
                        formkey: loginformkey,
                        email: _email,
                        password: _password);
                    Navigator.popAndPushNamed(context, ContactScreen.routeName);
                  }
                }),
          ],
        ),
      ),
    );
  }
}
