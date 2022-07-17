import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {
      print(e);
    }
  }

  // _googleSignUp() async {
  //   try {
  //     final GoogleSignIn _googleSignIn = GoogleSignIn(
  //       scopes: ['email'],
  //     );
  //     final FirebaseAuth _auth = FirebaseAuth.instance;

  //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //     final GoogleSignInAuthentication? googleAuth =
  //         await googleUser?.authentication;

  //     final AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );

  //     final User? user = (await _auth.signInWithCredential(credential)).user;
  //     // print("signed in " + user.displayName);

  //     return user;
  //   } catch (e) {}
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "SignIn to Continue",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "VEGI",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        shadows: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3))
                        ]),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: SignInButton(
                          Buttons.Apple,
                          text: "Sign up with Apple",
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: SignInButton(
                          Buttons.Google,
                          text: "Sign up with Google",
                          onPressed: () {
                            // _googleSignUp().then((value) =>
                            //     Navigator.pushNamed(context, '/home'));
                          },
                        ),
                      ),
                      SignInButton(
                        Buttons.Email,
                        text: "Sign up with Email",
                        onPressed: () {
                          Navigator.pushNamed(context, '/loginemail');
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "By sigining in you are agreeing to our ",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text(
                        "Term and Privacy Policy ",
                        style: TextStyle(color: Colors.grey[800]),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
