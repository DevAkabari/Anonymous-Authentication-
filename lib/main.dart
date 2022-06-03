// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String status;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    status = 'Not Auhtenticat';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () async {
                  await FirebaseAuthentication.auth.signInAnonymously();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                color: Colors.amber,
                child: Text("Log in"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FirebaseAuthentication {
  FirebaseAuthentication._();
  static final FirebaseAuthentication firebaseAuthentication =
      FirebaseAuthentication._();

  static final FirebaseAuth auth = FirebaseAuth.instance;

  Future<dynamic> signInAnonymously() async {
    try {
      await auth.signInAnonymously();
      // SnackBar(content: )
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }
}
