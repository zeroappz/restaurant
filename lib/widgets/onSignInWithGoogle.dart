import 'package:auth_buttons/auth_buttons.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationWidget extends StatelessWidget {
  final void Function()? onSignInWithGoogle;
  final void Function()? onSignInWithApple;
  const AuthenticationWidget(
      {Key? key, this.onSignInWithGoogle, this.onSignInWithApple})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: [
            Container(
              child: Text(
                  'By Signin you agree the terms and conditions and privacy policy'),
            ),
            SizedBox(
              height: 24.0,
            ),
            GoogleAuthButton(
              onPressed: onSignInWithGoogle ?? () {},
              text: 'LOGIN WITH GOOGLE',
              darkMode: true,
              style: AuthButtonStyle(
                iconSize: 24.0,
                iconBackground: Colors.white,
                height: 50.0,
                buttonColor: Color(0xff4285F4),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            AppleAuthButton(
              onPressed: onSignInWithApple ?? () {},
              style: AuthButtonStyle(
                iconSize: 24.0,
                height: 50.0,
                iconBackground: Colors.white,
              ),
            ),
          ],
        ));
  }
}
