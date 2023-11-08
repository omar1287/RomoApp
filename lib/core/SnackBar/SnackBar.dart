import 'package:flutter/material.dart';

void snackBar(BuildContext context,dynamic url){
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text('cannot launch $url')));
}