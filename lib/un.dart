// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// final FirebaseAuth auth = FirebaseAuth.instance;
// final GoogleSignIn googleSignIn = new GoogleSignIn();

// class Uns extends StatefulWidget {
//   const Uns({super.key});

//   @override
//   State<Uns> createState() => _UnsState();
// }

// class _UnsState extends State<Uns> {
//   late String status;

//   @override
//   void initState() {
//     // TODO: implement initState
//     status = 'Not Authenticated';

//     super.initState();
//   }

//   void signInAnon() async {
//     User user = await auth.signInWithEmailAndPassword(email: email, password: password);
//     if (user != null && user.isAnonymous == true) {
//       setState(() {
//         status = 'Signed In Anonymously';
//       });
//     } else {
//       status = 'SignIn Out';
//     }
//   }

//   void SignOut() async {
//     await auth.signOut();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       child: Column(
//         children: [
//           Text(status),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               MaterialButton(
//                 onPressed: SignOut,
//                 child: Text('Sign Out'),
//               ),
//               MaterialButton(
//                 onPressed: signInAnon,
//                 child: Text('Sign In Anonymous'),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
