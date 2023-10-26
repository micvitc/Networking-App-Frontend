// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String primaryFontName = 'Inter';
// const Color txtColor = Colors.grey.shade100;
Text txt(
  text, {
  isBold = false,
  double size = 13,
  font = 'Poppins', // Updated font to 'Poppins'
  TextDecoration decoration = TextDecoration.none,
  Color color = Colors.black,
  weight = FontWeight.normal,
  int maxLine = 4,
  int minLine = 1,
  TextAlign textAlign = TextAlign.center, // Updated textAlign
  TextOverflow overflow = TextOverflow.ellipsis,
  letterSpacing = 0.0,
}) {
  return Text(
    text,
    textAlign: textAlign,
    overflow: overflow,
    maxLines: maxLine,
    style: GoogleFonts.getFont(font,
        color: color,
        fontWeight: isBold ? FontWeight.bold : weight,
        fontSize: size,
        decoration: decoration,
        letterSpacing: letterSpacing),
  );
}
