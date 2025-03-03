import 'package:flutter/material.dart';
import '../utils/constant.dart';
import '../utils/style.dart';
import '../utils/assets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              ImageAssets.logo,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              StringConstants.loginTitle,
              style: AppStyles.textStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            // NEW: Wrap form in Expanded to center it
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center vertically
                crossAxisAlignment: CrossAxisAlignment.start, // Align left
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Handle forgot password
                      },
                      child: Text('Forgot Password?'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center button
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: AppStyles.elevatedButtonStyle(
                          backgroundColor: Colors.deepPurpleAccent,
                          foregroundColor: Colors.white,
                          borderRadius: 12.0,
                          horizontalPadding: 130.0,
                        ),
                        child: Text(
                          "Login",
                          style: AppStyles.buttonTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        // Handle forgot password
                      },
                      child: Text('Sign Up'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
