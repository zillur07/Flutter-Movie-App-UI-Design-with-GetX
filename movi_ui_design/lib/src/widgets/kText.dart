import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;

  final String? fontFamily;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? wordSpacing;

  final TextDirection? textDirection;
  final TextDecoration? decoration;

  KText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontFamily,
      this.maxLines,
      this.fontWeight,
      this.textAlign,
      this.wordSpacing,
      this.textDirection,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      // ignore: unnecessary_string_interpolations
      '$text',
      style: GoogleFonts.poppins(
        decoration: decoration,
        //fontSize: fontSize != null ? fontSize : 14,
        fontSize: fontSize ?? 14,
        //fontWeight: fontWeight != null ? fontWeight : FontWeight.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.white,
        wordSpacing: wordSpacing,
      ),
    );
  }
}
