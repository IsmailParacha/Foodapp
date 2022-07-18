import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/screen/productoverview.dart';
import 'auth/loginmail.dart';
import 'auth/signin.dart';
import 'auth/signup.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const mainclass());
}

class mainclass extends StatelessWidget {
  const mainclass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ecommerece App",
      home: productview(),
      routes: {
        // "/home": (context) => home(),
        "/loginemail": (context) => login(),
        "/signin": (context) => signin(),
        "/signup": (context) => signup(),
        "/home": (context) => home(),
      },
    );
  }
}
