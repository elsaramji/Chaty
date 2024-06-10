// Screens/chat_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:massage/Screens/screen_box.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/logic/screen_Size_contorl.dart';
import 'package:massage/widgets/normal_filed.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBox(
        content: Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: 10,
                    right: Sizer.percentWidth(context: context, percent: 50)),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: kColorbackgroundbutton,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: const Text("massage contan"),
              ),
              Expanded(
                child: SizedBox(
                  width: Sizer.percentWidth(context: context, percent: 50),
                ),
              ),
            ],
          ),
        ),
        TextfiledNormal(
            title: "massage",
            sficon: Icon(Icons.send),
            onChanged: (s) {},
            onValied: (s) {})
      ],
    ));
  }
}
