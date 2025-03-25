import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    this.labelText,
    this.icon,
    this.obscureText,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.fontSize,
  });

  final dynamic labelText;
  final dynamic icon;
  final dynamic suffixIcon;
  final dynamic obscureText;
  final dynamic controller;
  final dynamic validator;
  final dynamic fontSize;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Color(0xFF1F6B3B).withValues(alpha: 0.4),
        filled: true,
        labelText: labelText,
        labelStyle: GoogleFonts.inter(color: Color(0xFFFFFFFF), fontSize: 14.0),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: Icon(icon, color: Theme.of(context).colorScheme.primary),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: Icon(suffixIcon, color: Theme.of(context).colorScheme.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
