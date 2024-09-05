//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'LogInPage.dart';
// import '../Widgets/ElevatedButton.dart';
// import 'SettinPage.dart';
//
// class ACCOUNT extends StatefulWidget {
//   const ACCOUNT({Key? key}) : super(key: key);
//
//   @override
//   State<ACCOUNT> createState() => _ACCOUNTState();
// }
//
// class _ACCOUNTState extends State<ACCOUNT> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 15),
//                 Center(
//                   child: Text(
//                     'Login to your account & start delivering.',
//                     style: GoogleFonts.poppins(
//                       textStyle: const TextStyle(
//                         color: Color(0xFF6A7189),
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 AppTextFieldWidget(
//                   controller: _emailETController,
//                   hintText: 'Enter Your Email',
//                   validator: (value) {
//                     if (value?.isEmpty ?? true) {
//                       return 'Enter your valid email';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 12),
//                 AppTextFieldWidget(
//                   obscureText: _obscureText,
//                   hintText: 'Enter Your Password',
//                   controller: _passwordETController,
//                   suffixIcon: IconButton(
//                     icon: const Icon(Icons.remove_red_eye_outlined),
//                     onPressed: () {
//                       setState(() {
//                         _obscureText = !_obscureText;
//                       });
//                     },
//                   ),
//                   validator: (value) {
//                     if ((value?.isEmpty ?? true) || ((value?.length ?? 0) < 6)) {
//                       return 'Enter a password with more than 6 characters';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 12),
//                 Container(
//                   height: 48,
//                   width: 358,
//                   color: Colors.blueGrey,
//                   child: AppElevatedButton(
//                     Color: Colors.blueGrey,
//                     onTap: () {
//                       if (_formKey.currentState!.validate()) {
//                         _login();
//                       }
//                     },
//                     child: Center(
//                       child: _isLoading
//                           ? CircularProgressIndicator(
//                         valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//                       )
//                           : Text(
//                         "Login",
//                         style: GoogleFonts.poppins(
//                           textStyle: const TextStyle(
//                             color: Color(0xFFFFFFFF),
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
// }
