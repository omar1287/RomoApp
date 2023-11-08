import 'package:bookly_app/core/Utiles/Font.dart';
import 'package:flutter/material.dart';

class WidgetError extends StatelessWidget {

 String eMessage;

   WidgetError({super.key, required this.eMessage});

  @override
  Widget build(BuildContext context) {
    return  Text(eMessage,style: TextFont.textStyle23,);
  }
}
