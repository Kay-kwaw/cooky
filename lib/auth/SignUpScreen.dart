
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
   

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              const Align(
                alignment: AlignmentDirectional(-0.48, -0.81),
                child: Text(
                  'Join us & Cook \nWith Confidence',
                  style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFEFEFEF),
                        fontSize: 40
                      ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-0.29, -0.49),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'Save delicious recipes and get personalized content.',
                    style:TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color.fromARGB(255, 212, 212, 212),
                          fontSize: 18
                        ),
                  ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-0.02, -0.27),
                child: Icon(
                  Icons.soup_kitchen_outlined,
                  color:Colors.white,
                  size: 70,
                ),
              ),
//               Align(
//                 alignment: AlignmentDirectional(0.00, 0.48),
//                 child: Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       labelText: 'password',
//                       labelStyle: TextStyle(),
//                       hintStyle:TextStyle(),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Colors.white70,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.white70,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       errorBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.white70,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       focusedErrorBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.white70,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       suffixIcon: InkWell(
//                         onTap: () {},
                     
// //                         child: Icon(
// // ,
// //                           color: Color(0xFFA09F9F),
// //                           size: 20,
// //                         ),
//                       ),
//                     ),
//                     style:TextStyle(),
//                     keyboardType: TextInputType.visiblePassword,
//                     // validator:
//                     //     _model.textController1Validator.asValidator(context),
//                   ),
//                 ),
//               ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'fullname',
                      labelStyle: TextStyle(),
                      hintStyle: TextStyle(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white70,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white70,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color:Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style:TextStyle(),
                   
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.23),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'email',
                      labelStyle: TextStyle(),
                      hintStyle: TextStyle(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white70,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white70,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style:TextStyle(),
                    // validator:
                    //     _model.textController3Validator.asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.02, 0.76),
                child: OutlinedButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                 child: Text("Sign Up"),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-0.03, 0.91),
                child: Text(
                  'Already Have an Account? Sign In',
                  style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
