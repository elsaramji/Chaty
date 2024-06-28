// widgets/chat_bubbles.dart

import 'package:flutter/material.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/logic/screen_Size_contorl.dart';

class ChatBubbles extends StatelessWidget {
  final String contant;
  const ChatBubbles({super.key, required this.contant});

  @override
  // Builds a container widget with margin, padding, decoration, and child text.
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: Sizer.percentWidth(context: context, percent: 50),
        bottom: 8,
      ),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: kColorbackgroundbutton,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)),
      ),
      child: Text(contant),
    );
  }
}

class ChatBubblesforfrined extends StatelessWidget {
  final String contant;
  const ChatBubblesforfrined({super.key, required this.contant});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
        left: Sizer.percentWidth(context: context, percent: 50),
        bottom: 8,
      ),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: kColorSnackBarText,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20)),
      ),
      child: Text(contant),
    );
  }
}
/*
class ChatBubblesReturn extends StatelessWidget {
  final String sender;
  String? useremail = FirebaseAuth.instance.currentUser?.email;

  final Map rout;
  CollectionReference massage;

  ChatBubblesReturn({
    super.key,
    required this.sender,
    required this.massage,
    required this.rout,
  });

  @override
  Widget build(BuildContext context) {
    return Provider.of<Usertable>(context).sender_contant == useremail
        ? Chaty(massage: massage, currentUser: useremail, rout: rout)
        : Chaty_tow(massage: massage, currentUser: useremail, rout: rout);
  }
}
*/