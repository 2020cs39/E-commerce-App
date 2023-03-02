import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Black Colors
const Color eBlack = Color.fromARGB(255, 0, 0, 0);
const Color e = Colors.grey;
const Color eLightBlack = Color(0xffeff5f4);
// const Color eLighterBlack = Color(0xfffcfcfc);

// WHite Colors
const Color eWhite = Color(0xffffffff);
const Color eLightWhite = Color(0xffeff5f4);
const Color eLighterWhite = Color(0xfffcfcfc);

// Grey Colors
const Color eGrey = Color(0xff9397a0);
const Color eLighterGrey = Color.fromARGB(255, 228, 227, 227);

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
final eProductPageTitle = GoogleFonts.poppins(
  color: eDarkBlue,
  fontWeight: FontWeight.w500,
  fontSize: 18,
);

final eOriginalPrice = GoogleFonts.poppins(
  color: eDarkBlue,
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

final eDiscountedPrice = GoogleFonts.poppins(
  color: eDarkBlue,
  fontWeight: FontWeight.w800,
  fontSize: 25,
);

// Regular with darkBlue
final eRegular = GoogleFonts.poppins(
  color: eDarkBlue,
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

// Regular with darkBlue
final eSemiBold = GoogleFonts.poppins(
  color: eDarkBlue,
  fontWeight: FontWeight.w600,
);

// Regular with darkBlue
final eBoldText = GoogleFonts.poppins(
  color: eDarkBlue,
  fontWeight: FontWeight.w800,
  fontSize: 17,
);

// Button colors
const Color blackColor = Color.fromARGB(255, 29, 28, 28);
const Color successColor = Color.fromARGB(255, 57, 199, 165);
const Color dangerColor = Color.fromARGB(255, 255, 116, 101);
