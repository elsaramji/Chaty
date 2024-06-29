// Screens/chat_screen.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:massage/Screens/screen_box.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/logic/sendmassage.dart';
import 'package:massage/widgets/massage_Builder.dart';
import 'package:massage/widgets/normal_filed.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  static const String routeName = "ChatScreen";
  final String? currentUser = FirebaseAuth.instance.currentUser!.email;
  final CollectionReference massage =
      FirebaseFirestore.instance.collection(massage_collection);
  String massagecontent = "";
  final TextEditingController massagecontant = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  // Builds the chat screen widget with the input context.
  // Retrieves route arguments from the context, sets up the screen layout with a StreamBuilder for real-time updates,
  // and includes a text field for sending massages.
  Widget build(BuildContext context) {
    Map<String, dynamic> rout =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return ScreenBox(
        content: Column(
      children: [
        Expanded(
          child: StreamBuilder(
            stream: massage.orderBy(time_id, descending: true).snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return MassageBuilder(
                  currentUser: currentUser,
                  rout: rout,
                  snapshot: snapshot,
                  scrollController: scrollController,
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
        TextfiledNormal(
          title: "massage",
          controller: massagecontant,
          sficon: IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                Sendmassage.sendMassage(
                    rout: rout,
                    currentUser: currentUser!,
                    massagecontent: massagecontent,
                    massage: massage);
                // delete massage after send
                massagecontant.clear();
                scrollController.animateTo(
                  0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                );
              }),
          onChanged: (s) {
            massagecontent = s;
          },
        )
      ],
    ));
  }
}
