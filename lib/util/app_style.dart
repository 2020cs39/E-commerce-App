import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Black Colors
// const Color eBlack = Color(0xff19202d);
// const Color eLightBlack = Color(0xffeff5f4);
// const Color eLighterBlack = Color(0xfffcfcfc);

// WHite Colors
const Color eWhite = Color(0xffffffff);
const Color eLightWhite = Color(0xffeff5f4);
const Color eLighterWhite = Color(0xfffcfcfc);

// Grey Colors
const Color eGrey = Color(0xff9397a0);
const Color eLighterGrey = Color(0xffa7a7a7);

// Blue Colors
const Color eBlue = Color(0xff5474fd);
const Color eLightBLue = Color(0xff83b1ff);
const Color eLighterBLue = Color(0xffc1d4f9);
const Color eDarkBlue = Color(0xff19202d);

// Radius
const double borderRadius = 16.0;

final borderC = OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRadius),
  borderSide: BorderSide.none,
);

// Set font styles and colors from google font

// Regular with darkBlue
final eRegularText = GoogleFonts.poppins(
  color: eDarkBlue,
  fontWeight: FontWeight.w500,
);

// Regular with darkBlue
final eSemiBoldText = GoogleFonts.poppins(
  color: eDarkBlue,
  fontWeight: FontWeight.w600,
);

// Regular with darkBlue
final eBoldText = GoogleFonts.poppins(
  color: eDarkBlue,
  fontWeight: FontWeight.w800,
);
