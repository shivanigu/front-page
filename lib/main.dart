// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(MaterialApp(
    home: Begining(),
  ));
}

class Begining extends StatelessWidget {
  const Begining({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assests/image 1.png',
                height: 600,
                width: 428,
              ),
              Positioned(
                  bottom: 55,
                  // left: 70,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 0, 60.0, 0),
                    child: Container(
                      width: 273,
                      height: 60.0,
                      child: const Text(
                        'A new way to share\nyour journey',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'
                            // fontStyle: FontStyle.
                            ),
                        // word
                      ),
                    ),
                  ))
            ],
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              onPressed: () {},
              child: Text(
                'Continue with Phone Number',
                style: TextStyle(fontFamily: 'Roboto'),
              ),
              color: Colors.blueAccent,
              textColor: Colors.white,
            ),
          ),
          // SizedBox(height: 6.0),
          Text(
            'or',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.grey,
              // color:
            ),
          ),
          // // RaisedButton.icon(onPressed: () {}, icon: Icons., label: )
          FractionallySizedBox(
            widthFactor: 0.8,
            child: SignInButton(
              Buttons.Google,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                'By continuing, you agree to our terms and conditions and privacy policy'),
          )
// with custom text
          // SignInButton(
          //   Buttons.Google,
          //   text: "Sign up with Google",
          //   onPressed: () {},
          // )
        ],
      ),
    );
  }
}
