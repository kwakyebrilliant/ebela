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
    this.borderSize,
  });

  final dynamic text;
  final dynamic function;
  final dynamic color;
  final dynamic fontSize;
  final dynamic height;
  final dynamic width;
  final dynamic fontColor;
  final dynamic borderSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          height: height,
          width: width,
          color: color,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF228B22), width: borderSize),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.rubik(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: fontColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
