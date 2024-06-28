// Screens/contact_screen.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:massage/logic/builder_dialog.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/widgets/bottomcontroler.dart';
import 'package:massage/widgets/contants_builder.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = "massage_screen";

  ContactScreen({super.key});

  final CollectionReference recevermassage =
      FirebaseFirestore.instance.collection(receiver_collection);

  final String? currentuser = FirebaseAuth.instance.currentUser!.email;

  @override
    /// Builds the widget tree for the ContactScreen.
    ///
    /// This method returns a Scaffold widget that contains a bottom navigation bar
    /// and a body. The bottom navigation bar is a BottomControler widget that calls
    /// the `createContant` method of the BuilderDialog class when pressed. The body
    /// is a SafeArea widget that contains a StreamBuilder widget. The StreamBuilder
    /// widget listens to the `receivermassage.snapshots()` stream and builds the
    /// widget tree based on the snapshot data. If the snapshot has data, it returns
    /// a ContantBuilder widget with the `currentuser` and `snapshot` properties.
    /// Otherwise, it returns a Center widget with a CircularProgressIndicator.
    ///
    /// Returns a Scaffold widget.
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomControler(
        onPressed: () {
          BuilderDialog.createContant(context);
        },
      ),
      body: SafeArea(
          child: StreamBuilder(
              stream: recevermassage.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ContantBuilder(
                    currentuser: currentuser,
                    snapshot: snapshot,
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              })),
    );
  }
}
