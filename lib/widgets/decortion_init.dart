// widgets/decortion_init.dart
import 'package:flutter/material.dart';
import 'package:massage/logic/constans.dart';

// widgets/decortion_init.dart

class Decortioninputer {
  static OutlineInputBorder bordertextfiled = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.5),
      borderSide: const BorderSide(
        width: 0.5,
        color: kColorborder,
      ));
  static OutlineInputBorder errorbordertextfiled = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.5),
      borderSide: const BorderSide(
        width: 0.5,
        color: kColorerrorborder,
      ));
  static TextStyle textStyle = const TextStyle(
      color: const Color(0xff35d97e),
      fontSize: 20,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600);
  static SizedBox space25 = const SizedBox(
    width: double.infinity,
    height: 25,
  );
  static SizedBox space12 = const SizedBox(
    width: double.infinity,
    height: 12.5,
  );
}
