import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () => _signInWithGoogle(),
          child: Text("Continue with GOOGLE"),
        ),
      ),
    );
  }

  bool _isloading = false;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  void _signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await googleSignIn.signIn();

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      setState(() {
        _isloading = true;
      });

      final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
      final User user =
          (await firebaseAuth.signInWithCredential(credential)).user;

      print(user.uid);

      setState(() {
        _isloading = false;
      });
      if (user != null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
