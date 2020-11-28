import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'signin.dart';

class SignUpTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      title: 'Creator Studio',
      home: SignUpPageTwo(),
    );
  }
}

class SignUpPageTwo extends StatefulWidget {
  @override
  _SignUpPageTwoState createState() => _SignUpPageTwoState();
}

class _SignUpPageTwoState extends State<SignUpPageTwo> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final signin = RichText(
        text: new TextSpan(
          text: 'Sign In',
          style: new TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
          recognizer: new TapGestureRecognizer()
            ..onTap = () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignIn()),
              );
            })
    );
    final or = Text(
      'OR',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
    );
    final userName = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(5.0, 15.0, 20.0, 15.0),
        hintText: "Username",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        //  border:
        //    OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
      ),
    );
    final pass = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(5.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
    final nextButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff006064),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (MainPage())),
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
                  height: 250.0,
                  child: Image.asset(
                    'assets/Logooooo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 25.0),
                userName,
                SizedBox(height: 25.0),
                pass,
                SizedBox(
                  height: 30.0,
                ),
                nextButton,
                SizedBox(
                  height: 15.0,
                ),
                // signin,
                //  SizedBox(
                //        height: 10.0,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
