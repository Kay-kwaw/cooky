
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

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
    return Tab(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 143, 128, 128),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              const Align(
                alignment: AlignmentDirectional(-0.48, -0.81),
                child: Text(
                  'Get back in the \nKitchen',
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
                  padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                  child: Text(
                    'Access your wonderful recipes by loggin in.',
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
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'email',
                      labelStyle: TextStyle(),
                      hintStyle: TextStyle(),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white70,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white70,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color:Colors.white,
                          width: 1,
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
                      labelText: 'password',
                      labelStyle: TextStyle(),
                      hintStyle: TextStyle(),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white70,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white70,
                          width: 1,
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
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 14, 12, 17),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  onPressed: () {
                    print('Button pressed ...');
                  },
                 child: const Text("Sign In"),
                ),
              ),
               InkWell(
                onTap: () {
                  print('InkWell tapped ...');     
                },
                child: const Align(
                  alignment: AlignmentDirectional(-0.03, 0.91),
                  child: Text(

                    'Do not Have an Account? Sign Up!',
                    style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
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
