// widgets/create_chat.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/logic/screen_Size_contorl.dart';
import 'package:massage/logic/valiedtor.dart';
import 'package:massage/widgets/button_elevated.dart';
import 'package:massage/widgets/normal_filed.dart';

// ignore: must_be_immutable
class CreateChat extends StatelessWidget {
  CreateChat({super.key});
  String? receiverEmail;
  CollectionReference receivermassage =
      FirebaseFirestore.instance.collection('receiver_massage');
  GlobalKey<FormState> formkey3 = GlobalKey<FormState>();
  @override
  /// Builds a form dialog widget that allows the user to add a conversation by providing the receiver's email.
  ///
  /// The dialog is displayed with a rounded rectangle shape and a light background color. It has a title
  /// "Add Conversation" and a text field for the receiver's email. The email is validated using the `Valiedtor.emailValied`
  /// method. If the form is valid, the conversation is added to the `receivermassage` collection in Firestore with
  /// the receiver's email and the current user's email as sender. The dialog is then closed.
  ///
  /// Parameters:
  /// - `context`: The build context of the widget.
  ///
  /// Returns:
  /// A `Form` widget that contains a `Dialog` widget with a `Container` child. The `Container` child contains a
  /// `Column` with a title, a text field, and a button.
  Widget build(BuildContext context) {
    return Form(
      key: formkey3,
      child: Dialog(
          backgroundColor: kColorbackgroundLight,
          shadowColor: kColorSnackBarText,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: const EdgeInsets.all(8),
            width: Sizer.percentWidth(context: context, percent: 50),
            height: Sizer.percentHeight(context: context, percent: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add Converstion",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextfiledNormal(
                  title: "recever email",
                  onChanged: (data) {
                    receiverEmail = data;
                  },
                  onValied: (v) => Valiedtor.emailValied(v),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                    title: "say hello",
                    onPressed: () async {
                      if (formkey3.currentState!.validate()) {
                        await receivermassage.add({
                          'receiver': receiverEmail,
                          'sender': FirebaseAuth.instance.currentUser!.email,
                        });
                        Navigator.pop(context);
                      }
                    }),
              ],
            ),
          )),
    );
  }
}
