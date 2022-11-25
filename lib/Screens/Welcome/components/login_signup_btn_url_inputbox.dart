import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../Login/login_screen.dart';
import '../../Signup/signup_screen.dart';

class LoginAndSignupBtnAndUrlInputBox extends StatefulWidget {
  const LoginAndSignupBtnAndUrlInputBox({Key? key}) : super(key: key);
  @override
  State<LoginAndSignupBtnAndUrlInputBox> createState() =>
      _LoginAndSignupBtnAndUrlInputBoxState();
}

class _LoginAndSignupBtnAndUrlInputBoxState
    extends State<LoginAndSignupBtnAndUrlInputBox> {
  bool _enabled = false;
  String _url = '';
  void onBtnEnabledChanged(bool newValue) {
    setState(() {
      _enabled = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (text) {
            RegExp exp = RegExp(r'[a-zA-z]+://[^\s]*');
            bool matched = exp.hasMatch(text);
            if (matched) {
              _url = text;
            }
            onBtnEnabledChanged(matched);
          },
          decoration: InputDecoration(
            hintText: "Server Address. eg:https://chat.yzzi.icu",
          ),
        ),
        const SizedBox(height: 16),
        Hero(
          tag: "login_btn",
          child: ElevatedButton(
            onPressed: _enabled
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(url: _url),
                      ),
                    );
                  }
                : null,
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _enabled
              ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(url: _url),
                    ),
                  );
                }
              : null,
          style: ElevatedButton.styleFrom(
              primary: Theme.of(context).brightness == Brightness.dark
                  ? DarkkPrimaryLightColor
                  : kPrimaryLightColor,
              elevation: 0),
          child: Text(
            "Sign Up".toUpperCase(),
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
