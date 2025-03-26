import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    super.key,
    this.function,
    this.text,
    this.color,
    this.fontSize,
    this.size,
  });

  final dynamic text;
  final dynamic function;
  final dynamic color;
  final dynamic fontSize;
  final dynamic size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          height: size,
          width: size,
          color: color,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.rubik(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
