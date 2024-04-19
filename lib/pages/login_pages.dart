import 'package:flutter/material.dart';
import 'package:logmodel/components/my_button.dart';
import 'package:logmodel/components/my_text_field.dart';
import 'package:logmodel/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void SignIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcome back you've been missed",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controler: usernameController,
                obscureText: false,
                hintTexte: "Username",
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controler: passwordController,
                obscureText: true,
                hintTexte: "Password",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(texte: "Sign In", onTap: SignIn),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      "Or continue with ",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(ImagePath: 'lib/images/google.png'),
                  SizedBox(
                    width: 20,
                  ),
                  SquareTile(ImagePath: 'lib/images/app.png'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
