import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

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

            // Column for both expanded
            child: Column(
              children: [
                Expanded(
                  // Stack for both search icon and ebela text
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
                              style: TextStyle(
                                // 25% of screen width
                                fontSize: screenWidth * 0.25,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),

                          Text(
                            'ebela',
                            style: TextStyle(
                              // 25% of screen width
                              fontSize: screenWidth * 0.05,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    'data',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05, // 5% of screen width
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
