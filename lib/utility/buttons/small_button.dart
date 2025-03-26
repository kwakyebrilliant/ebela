import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    super.key,
    this.function,
    this.text,
    this.color,
    this.fontSize,
    this.height,
    this.width,
    this.fontColor,
    this.borderWidth,
  });

  final dynamic text;
  final dynamic function;
  final dynamic color;
  final dynamic fontSize;
  final dynamic height;
  final dynamic width;
  final dynamic fontColor;
  final dynamic borderWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: height,
        width: width,

        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Color(0xFF228B22), width: borderWidth),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.rubik(fontSize: fontSize, color: fontColor),
          ),
        ),
      ),
    );
  }
}
