import 'package:flutter/material.dart';
import 'package:movies_app/pages/homepage/homepage.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
          
        );
      },
      child: Container(
        height: 75,
        width: 358,
        decoration: BoxDecoration(
          color: Colors.orange.shade900,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text(
            "Sign in",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
