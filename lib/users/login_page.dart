import 'package:ebela/utility/textformfield/mytextformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          // Container for all contents
          body: Container(
            // 5% of screen width
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF1F6B3B),
                  Color(0xFF323D2C),
                  Color(0xFF0E1B12),
                  Color(0xFF0B0B0B),
                ],
                stops: [0.0, 0.3, 0.6, 1.0],
              ),
            ),

            // Column for Stack and Expanded
            child: Column(
              children: [
                // Padding around Stack
                Padding(
                  // 8% of screen height
                  padding: EdgeInsets.only(top: screenHeight * 0.08),

                  // Stack here
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.search,
                            // 40% of screen width
                            size: screenWidth * 0.4,
                            color: Colors.white.withValues(alpha: 0.4),
                          ),
                        ),
                      ),

                      // ebela text centered
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ebela text centered
                          Center(
                            child: Text(
                              'ebela',
                              style: GoogleFonts.inter(
                                // 25% of screen width
                                fontSize: screenWidth * 0.25,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Expanded here
                Expanded(
                  // Padding around column
                  child: Padding(
                    // 4% of screen height
                    padding: EdgeInsets.only(top: screenHeight * 0.04),

                    // Column here
                    child: Column(
                      children: [
                        // Welcome text here
                        Text(
                          'Welcome Back',
                          style: GoogleFonts.inter(
                            // 6% of screen width
                            fontSize: screenWidth * 0.06,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3,
                          ),
                        ),

                        // use email to register
                        Text(
                          'or use email to register',
                          style: TextStyle(
                            color: Colors.white,
                            // 4% of screen width
                            fontSize: screenWidth * 0.04,
                          ),
                        ),

                        Form(
                          child: Column(
                            children: [
                              MyTextFormField(
                                labelText: 'Email Address',
                                icon: Icons.email_outlined,
                                obscureText: false,
                                fontSize: screenWidth * 0.03,
                                // controller: _emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Email is required';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
