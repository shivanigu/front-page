// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(MaterialApp(
    home: Landing_Page(),
  ));
}

class Landing_Page extends StatelessWidget {
  const Landing_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assests/image 1.png',
                height: height / 1.35,
                width: 500,
                fit: BoxFit.values[0],
              ),
              Positioned(
                  bottom: 30,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 0, 60.0, 0),
                    child: Container(
                      width: 273,
                      height: 60.0,
                      child: Text(
                        'A new way to share\nyour journey',
                        style: TextStyle(
                            fontSize: 25.0,
                            // fontWeight: FontWeight.bold,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ))
            ],
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                'Continue with Phone Number',
                style: TextStyle(fontFamily: 'Roboto'),
              ),
              color: Color(0xFF478DF4),
              textColor: Colors.white,
            ),
          ),
          Text(
            'Or',
            style: TextStyle(
              fontSize: 22.0,
              color: Color.fromRGBO(122, 73, 73, 0.72),
            ),
          ),
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
              'By continuing, you agree to our terms and conditions and privacy policy',
              style: TextStyle(color: Color.fromRGBO(122, 73, 73, 0.72)),
            ),
          ),
        ],
      ),
    );
  }
}
