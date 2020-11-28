import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'signup_page.dart';



class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      title: 'Creator Studio',
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {

    final signUp = RichText(
      text: new TextSpan(
            text: 'Sign Up',
            style: new TextStyle(color: Colors.teal, fontWeight: FontWeight.bold), 
            recognizer: new TapGestureRecognizer()
            ..onTap = (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),
            );
          }
          )
      );

     final ueField = TextField(
           obscureText: false,
           style: style,
           decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(5.0, 15.0, 20.0, 15.0),
        hintText: "Username",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),),),
         );
          final passwordField = TextField(
           obscureText: true,
           style: style,
           decoration: InputDecoration(
               contentPadding: EdgeInsets.fromLTRB(5.0, 15.0, 20.0, 15.0),
                hintText: "Password",
              focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),),),
         );
        final signInButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff006064),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
            },
            child: Text("Sign In",
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
                       ueField,
                       SizedBox(height: 25.0),
                       passwordField,
                       SizedBox(
                       height: 35.0,
                       ),
                    signInButon,
                    SizedBox(
                      height: 15.0,
                    ),
                    signUp,
                       SizedBox(
                       height: 10.0,
                       ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }


