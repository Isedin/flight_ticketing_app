import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static const Color bgColor = Color(0xFFeeedf2);
  static const Color textColor = Color(0xFF3b3b3b);
  static const Color ticketBlue = Color(0xFF526799);
  static const Color ticketOrange = Color(0xFFf37b67);
  static const Color kakiColor = Color(0xFFf7b259);
  static const Color plainColor = Color(0xFFBFC2DF);
  static const Color findTicketColor = Color(0xD91130CE);
  static const Color circleColor = Color(0xFF189999);
  static const Color ticketColor = Color(0xFFFFFFFF);
  static const Color dotColor = Color(0xFF8ACCF7);
  static const Color planeSecondColor = Color(0xFFBACCF7);
  static const Color profileLocationColor = Color(0xFFFEF4F3);
  static const Color profileTextColor = Color(0xFF526799);

  static const TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headLineStyle2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade500,
  );

  static const TextStyle cardTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: kakiColor,
  );

  static const TextStyle cardSubtitle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: bgColor,
  );

  static const TextStyle cardPrice = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: kakiColor,
  );
}
