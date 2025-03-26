import 'package:ebela/utility/buttons/small_button.dart';
import 'package:ebela/utility/textformfield/mytextformfield.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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

    // list
    final List<Map<String, dynamic>> iconList = [
      {'name': 'gmail', 'icon': EvaIcons.email},
      {'name': 'apple', 'icon': Icons.apple},
      {'name': 'facebook', 'icon': EvaIcons.facebook},
      {'name': 'linkedin', 'icon': EvaIcons.linkedin},
    ];

    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            // Container for all contents
            child: Container(
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
                    // 10% of screen height
                    padding: EdgeInsets.only(top: screenHeight * 0.1),

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
                              color: Color(0xFFFFFFFF).withValues(alpha: 0.4),
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
                                  color: Color(0xFFFFFFFF),
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
                      padding: EdgeInsets.only(top: screenHeight * 0.07),

                      // Column here
                      child: Column(
                        children: [
                          // Padding around Welcome text here
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: screenHeight * 0.03,
                            ),

                            // Welcome text here
                            child: Text(
                              'Welcome Back',
                              style: GoogleFonts.inter(
                                // 6% of screen width
                                fontSize: screenWidth * 0.06,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),

                          // Padding around Row for alternative sign in
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: screenHeight * 0.03,
                              left: screenWidth * 0.08,
                              right: screenWidth * 0.08,
                            ),

                            // Row for icon list
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:
                                  iconList.map((list) {
                                    return Container(
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          screenHeight * 0.5,
                                        ),
                                        border: Border.all(
                                          color: Color(0xFF228B22),
                                          width: screenWidth * 0.003,
                                        ),
                                      ),

                                      // Icons here
                                      child: Icon(
                                        list['icon'],
                                        size: screenWidth * 0.08,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    );
                                  }).toList(),
                            ),
                          ),

                          // use email to login
                          Text(
                            'or use email to login',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              // 4% of screen width
                              fontSize: screenWidth * 0.036,
                            ),
                          ),

                          // Padding around Form
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04,
                              vertical: screenHeight * 0.03,
                            ),

                            // Form here
                            child: Form(
                              // Column for form contents
                              child: Column(
                                children: [
                                  // Padding around Email TextFormField
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: screenHeight * 0.02,
                                    ),

                                    // Email TextFormField
                                    child: MyTextFormField(
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
                                  ),

                                  // Padding around Password TextFormField
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: screenHeight * 0.03,
                                    ),

                                    // Password TextFormField
                                    child: MyTextFormField(
                                      labelText: 'Password',
                                      icon: Icons.lock_outline,
                                      suffixIcon: Icons.remove_red_eye_outlined,
                                      obscureText: true,
                                      fontSize: screenWidth * 0.03,
                                      // controller: _passwordController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Password is required';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),

                                  // Row for Forgot Password and click here
                                  Row(
                                    children: [
                                      // Forgot Password text here
                                      Text(
                                        'Forgot Your Password?',
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          // 4% of screen width
                                          fontSize: screenWidth * 0.036,
                                        ),
                                      ),

                                      SizedBox(width: screenWidth * 0.01),

                                      Text(
                                        'Click Here',
                                        style: TextStyle(
                                          color: Color(0xFF228B22),
                                          // 4% of screen width
                                          fontSize: screenWidth * 0.036,
                                        ),
                                      ),
                                    ],
                                  ),

                                  // Row for both sign in and sign up icons
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: screenHeight * 0.03,
                                    ),

                                    // Row for both sign in and sign up icons
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Sign in Button
                                        SmallButton(
                                          text: 'Sign In',
                                          fontSize: screenWidth * 0.036,
                                          color: Color(0xFF228B22),
                                          fontColor: Color(0xFFFFFFFF),
                                          borderWidth: screenWidth * 0.005,
                                          height: screenHeight * 0.056,
                                          width: screenWidth * 0.36,
                                        ),

                                        // Sign up Button
                                        SmallButton(
                                          text: 'Sign Up',
                                          fontSize: screenWidth * 0.036,
                                          color: Color(0xFFFFFFFF),
                                          fontColor: Color(0xFF228B22),
                                          borderWidth: screenWidth * 0.005,
                                          height: screenHeight * 0.056,
                                          width: screenWidth * 0.36,
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
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
