import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';

// ignore: camel_case_types
class Otp_screen extends StatefulWidget {
  const Otp_screen({super.key});

  @override
  State<Otp_screen> createState() => _Otp_screenState();
}

// ignore: camel_case_types
class _Otp_screenState extends State<Otp_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("OTP Screen", style: TextStyle(
          fontSize: 18
        ),),
        backgroundColor: Colors.white,
      ),
      body:  Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(30,20,0,0),
        child: Column(
          children: [
            const Text("Verify", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            const Text("Please enter the code sent to the number", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300
            ),),
            const SizedBox(height: 20,),
            OTPTextField(
              length: 5,
              width: 300,
              onCompleted: (value) {
                 if (kDebugMode) {
                   print("Completed: $value");
                 }
              },
            )
          ],
        ),
      ),
    );
  }
}