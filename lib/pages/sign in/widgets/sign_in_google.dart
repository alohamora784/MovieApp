import 'package:flutter/material.dart';

class SignWithGoogleButton extends StatefulWidget {
  const SignWithGoogleButton({super.key});

  @override
  State<SignWithGoogleButton> createState() => _SignWithGoogleButtonState();
}

class _SignWithGoogleButtonState extends State<SignWithGoogleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 75,
        width: 358,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Row(
            children: [
              Icon(
                Icons.g_mobiledata,
                size: 70,
                color: Colors.white,
              ),
              Text(
                "Continue with Google",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
