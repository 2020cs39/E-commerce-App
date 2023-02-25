import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// WHite Colors
const Color whiteC = Color(0xffffffff);
const Color lightWhiteC = Color(0xffeff5f4);
const Color lighterWhiteC = Color(0xfffcfcfc);

// Grey Colors
const Color greyC = Color(0xff9397a0);
const Color lighterGreyC = Color(0xffa7a7a7);

// Blue Colors
const Color blueC = Color(0xff5474fd);
const Color lightBLueC = Color(0xff83b1ff);
const Color lighterBLueC = Color(0xffc1d4f9);
const Color darkBlueC = Color(0xff19202d);

// Radius
const double borderRadius = 16.0;

final borderC = OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRadius),
  borderSide: BorderSide.none,
);

// Set font styles and colors from google font
// Bold with dark blue
final boldC = GoogleFonts.poppins(
  color: darkBlueC,
  fontWeight: FontWeight.w700,
);
// SemiBold with darkBlue
final semiBoldC = GoogleFonts.poppins(
  color: darkBlueC,
  fontWeight: FontWeight.w700,
);
// MediumBold with darkBlue
final mediumBoldC = GoogleFonts.poppins(
  color: darkBlueC,
  fontWeight: FontWeight.w700,
);
// Regular with darkBlue
final regularC = GoogleFonts.poppins(
  color: darkBlueC,
  fontWeight: FontWeight.w700,
);
