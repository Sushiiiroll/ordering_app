import 'package:flutter/material.dart';

class GlobalMethods {
  static navigateTo({required BuildContext ctx, required String routeName}){
    Navigator.pushNamed(ctx, routeName);
  }

  void showDialogg(String s, String t, void Function() param2, BuildContext context) {}
}