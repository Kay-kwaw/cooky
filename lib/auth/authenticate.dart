import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';

// ignore: camel_case_types
class Otp_screen extends StatefulWidget {
  const Otp_screen({super.key});

  @override
  State<Otp_screen> createState() => _Otp_screenState();
}

Future<void> _signInWithPhoneNumber( String verificationId, String smsCode )async {

  try {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
    verificationId: verificationId,
    smsCode: smsCode,
  );

//_auth.signInWithCredential(credential) is called to sign in the user using the obtained credential.
  await _auth.signInWithCredential(credential);

  // Display a success message using a SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Sign-in successful!')),
    );

  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $e')),
    );
    if (kDebugMode) {
      print("Failed to verify phone number: $e");
    }
  }
}

// ignore: camel_case_types
class _Otp_screenState extends State<Otp_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text("OTP Screen", style: TextStyle(
          fontSize: 18
        ),),
        backgroundColor: Colors.white,
      ),
      body:  Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(30,20,0,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text("Didn't receive the code? ", style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300
              ),
              textAlign: TextAlign.center,),
            ),
            const SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15,0,0,0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onPressed: (){}, 
                child: const Text("Verify", style: TextStyle(fontSize: 16, color: Colors.white),)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        backgroundColor:  Colors.black,
        child: const Icon(Icons.arrow_forward),
      )
    );
  }
}