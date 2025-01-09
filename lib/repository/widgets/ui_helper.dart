import 'package:flutter/material.dart';

class UiHelper {
  static customImage({required String img}) {
    return Image.asset('assets/images/$img');
  }

  static customText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize,
      TextDecoration? textdecoration}) {
    return Text(
      text,
      style: TextStyle(
        decoration: textdecoration,
        fontFamily: fontfamily ?? "regular",
        fontSize: fontsize,
        fontWeight: fontweight,
        color: color,
      ),
    );
  }
}
