// Screens/massage_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/logic/screen_Size_contorl.dart';
import 'package:massage/widgets/bottomcontroler.dart';
import 'package:massage/widgets/massage_contant.dart';

class MassageScreen extends StatelessWidget {
  const MassageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomControler(),
      body: SafeArea(child: ListView.builder(itemBuilder: (context, index) {
        return const MassageContant();
      })),
    );
  }
}


