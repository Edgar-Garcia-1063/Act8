import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Parte superior decorada
          Container(
            width: double.infinity,
            height: 320,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(80),
              ),
            ),
            child: Stack(
              children: const [
                Positioned(
                  top: 60,
                  left: 40,
                  child: Icon(Icons.lightbulb_outline,
                      size: 40, color: Colors.white),
                ),
                Positioned(
                  top: 40,
                  right: 80,
                  child: Icon(Icons.light_rounded,
                      size: 40, color: Colors.white),
                ),
                Positioned(
                  top: 30,
                  right: 30,
                  child:
                      Icon(Icons.access_time, size: 30, color: Colors.white),
                ),
                Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 40),

          // Inputs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                _inputField("Email or Phone number"),
                const SizedBox(height: 20),
                _inputField("Password", isPassword: true),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputField(String hint, {bool isPassword = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.red.shade100,
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    );
  }
}
