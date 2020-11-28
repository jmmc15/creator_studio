import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'signin.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      title: 'Creator Studio',
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {

    final signin = RichText(
      text: new TextSpan(
        children: [
          new TextSpan(
            text: 'Already Have an Account?',
            style: new TextStyle(color: Colors.black),
          ),
          new TextSpan(
            text: ' Sign In',
            style: new TextStyle(color: Colors.teal, fontWeight: FontWeight.bold), 
            recognizer: new TapGestureRecognizer()
            ..onTap = (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignIn()),
            );}
          )
        ]
      )
    );
        final signupButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff006064),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),
            );
            },
            child: Text("Sign Up",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        );
     return Scaffold(
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 300.0,
                      child: Image.asset(
                        'assets/Logooooo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    signupButon,
                    SizedBox(
                      height: 15.0,
                    ),
                    signin,
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }


