import 'package:flutter/material.dart';
import 'package:movies_app/pages/sign%20in/widgets/sign_in_button.dart';
import 'package:movies_app/pages/sign%20in/widgets/sign_in_google.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 60), // Add padding to create space between top and image
              child: Container(
                width: double.infinity,
                child: Image.network(
                  "https://pbs.twimg.com/media/E6ssEyuVoBwGq6a?format=jpg&name=900x900",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 129,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "My",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.orange.shade900,
                      ),
                    ),
                    const TextSpan(
                      text: "Movies",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 42,
              right: 42,
              bottom: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Watch your favorite movie or series on only",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "one platform.You can watch it anytime and",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "anywhere",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              left: 36,
              right: 36,
              bottom: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 22),
                  SignInButton(),
                  SizedBox(height: 22),
                  SignWithGoogleButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
