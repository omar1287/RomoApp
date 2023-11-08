import 'package:flutter/cupertino.dart';

abstract class TextFont{

  static const textStyle20=TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily:'KGtS'
  );
  static const textStyle23=TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w600,
      fontFamily:'KGtS'
  );
  static const textStyle18=TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600
  );
  static const textStyle20WithoutFontFamily=TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,

  );
  static const textStyle30=TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.normal
  );
  static const textStyle12=TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal
  );
  static const textStyle16=TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal
  );
  static const textStyle25=TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.normal
  );
}