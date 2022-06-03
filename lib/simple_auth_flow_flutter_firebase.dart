// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: LandingPage(),
//     );
//   }
// }

// class LandingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<FirebaseUser>(
//       stream: FirebaseAuth.instance.onAuthStateChanged,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.active) {
//           FirebaseUser user = snapshot.data;
//           if (user == null) {
//             return SignInPage();
//           }
//           return HomePage();
//         } else {
//           return Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//       },
//     );
//   }
// }

// class SignInPage extends StatelessWidget {
//   Future<void> _signInAnonymously() async {
//     try {
//       await FirebaseAuth.instance.signInAnonymously();
//     } catch (e) {
//       print(e); // TODO: show dialog with error
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Sign in')),
//       body: Center(
//         child: MaterialButton(
//           child: Text('Sign in anonymously'),
//           onPressed: _signInAnonymously,
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   Future<void> _signOut() async {
//     try {
//       await FirebaseAuth.instance.signOut();
//     } catch (e) {
//       print(e); // TODO: show dialog with error
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//         actions: <Widget>[
//           MaterialButton(
//             child: Text(
//               'Logout',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 color: Colors.white,
//               ),
//             ),
//             onPressed: _signOut,
//           ),
//         ],
//       ),
//     );
//   }
// }
