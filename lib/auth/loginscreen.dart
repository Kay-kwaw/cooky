
import 'package:cookify/products/inventory.dart';
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
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          // top: true,
          child: Stack(
            children: [
              const Align(
                alignment: AlignmentDirectional(-0.48, -0.81),
                child: Text(
                  'Get back in the \nKitchen',
                  style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Color.fromARGB(255, 0, 0, 0),
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
                          color: Color.fromARGB(255, 125, 124, 124),
                          fontSize: 18
                        ),
                  ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-0.02, -0.27),
                child: Icon(
                  Icons.soup_kitchen_outlined,
                  color:Color.fromARGB(255, 0, 0, 0),
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
                          color: Color.fromARGB(179, 99, 99, 99),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(179, 75, 75, 75),
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
                      labelStyle: const TextStyle(),
                      hintStyle: TextStyle(),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(179, 119, 118, 118),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(179, 108, 108, 108),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style:const TextStyle(),
                    // validator:
                    //     _model.textController3Validator.asValidator(context),
                  ),
                ),
              ),
              const Align(
                  alignment: AlignmentDirectional(-0.03, 0.51),
                  child: Text(

                    'Forgotten Password!',
                    style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color.fromARGB(255, 6, 6, 6),
                          fontSize: 16
                        ),
                  ),
                ),
              
              Align(
                alignment: const AlignmentDirectional(-0.02, 0.76),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 14, 12, 17),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductsWidget()),
            );
                  },
                 child: const Text("Sign In"),
                ),
              ),
               const Align(
                  alignment: AlignmentDirectional(-0.03, 0.91),
                  child: Text(

                    'Do not Have an Account? Sign Up!',
                    style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color.fromARGB(255, 6, 6, 6),
                          fontSize: 16
                        ),
                  ),
                ),
              ]),
          ),
        ),
      );
  }
}
