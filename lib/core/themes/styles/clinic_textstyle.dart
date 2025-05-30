import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ClinicTextStyle {
  /// Text style for headings with large font size and bold weight.
  static final mobileH2 = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      // color: CurcoolColors.darkGray,
    ),
  );

  /// Text style for headings with medium font size and bold weight.
  static final mobileH3 = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );

  /// Text style for headings with small font size and bold weight.
  static final mobileH4 = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  );

  /// Text style for regular body text with medium weight.
  static final mobileBodyText = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );

  /// Text style for body text with bold weight and smaller font size.
  static final bodyBoldCaption = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );

  ///
  static final boldCaption = GoogleFonts.inriaSerif(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );

  /// Text style for small-sized body text with regular weight.
  static final mobileCaption = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );

  /// Text style for extra small-sized text with regular weight.
  static final caption02 = GoogleFonts.inter(
      textStyle: const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
  ));

  /// Text style for extra small-sized text with regular weight.
  static final caption03 = GoogleFonts.inter(
      textStyle: const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  ));

  /// Text style for large display text with medium weight.
  static final displayLgMedium = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w500,
    ),
  );

  /// Text style for extra small-sized text with semibold weight.
  static final xsSemibold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  );

  /// Text style for small-sized text with semibold weight.
  static final smSemibold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
  );

  /// Text style for small-sized text with bold weight.
  static final smBold = GoogleFonts.inter(
      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700));

  /// Text style for medium-sized text with semibold weight and custom color.
  static final mdSemibold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      // color: CurcoolColors.darkGrayishBlue,
    ),
  );

  /// Text style for extra small-sized text with medium weight.
  static final xsMedium = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  );

  /// Text style for medium small-sized text with medium weight.
  static final msMedium = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
  );

  /// Text style for extra small-sized text with regular weight.
  static final xsRegular = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );

  /// Text style for small-sized text with regular weight.
  static final smRegular = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );

  /// Text style for small-sized text with medium weight.
  static final smMedium = GoogleFonts.inter(
      textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ));

  /// Text style for default tab labels with small font size and custom color.
  static final tabLabelDefault = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      // color: CurcoolColors.darkGrayishPurple,
    ),
  );

  /// Text style for selected tab labels with small font size, bold weight, and custom color.
  static final tabLabelSelected = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      // color: CurcoolColors.veryDarkGrayishPurple,
    ),
  );

  /// Text style for agenda card titles with medium font size and semibold weight.
  static final agendaCardTitleStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  );

  /// Text style for "Buy Ticket" text with medium font size and semibold weight.
  static final buyTicketStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  );
}
