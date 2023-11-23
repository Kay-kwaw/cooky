

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PhoneAuthWidget extends StatefulWidget {
  const PhoneAuthWidget({Key? key}) : super(key: key);

  @override
  _PhoneAuthWidgetState createState() => _PhoneAuthWidgetState();
}

class _PhoneAuthWidgetState extends State<PhoneAuthWidget> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
 
  @override
  void initState() {
   
  }

  @override
  void dispose() {
   

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        final pages = List.generate(
        3,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.green),
                )),
              ),
            )
            );
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        body: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 1,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.00, 1.00),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 40
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Cookify", style: TextStyle(
                          fontSize: 30,
                        ),),
                        IconButton(onPressed: () {

                        },
                         icon: const Icon(Icons.food_bank_outlined),
                         iconSize: 30,
                         )
                        
                      
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 400,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: PageView(
                            controller: controller,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.network(
                                           "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxmb29kfGVufDB8fHx8MTcwMDY5MzI4OHww&ixlib=rb-4.0.3&q=80&w=1080",
                                            width: 300,
                                            height: 191.25,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxmb29kfGVufDB8fHx8MTcwMDY5MzI4OHww&ixlib=rb-4.0.3&q=80&w=1080',
                                          width: 300,
                                          height: 200,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.network(
                                            "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxmb29kfGVufDB8fHx8MTcwMDY5MzI4OHww&ixlib=rb-4.0.3&q=80&w=1080",
                                            width: 300,
                                            height: 200,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                          ),
                        ),
                      ),
                      SmoothPageIndicator(  
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await controller.animateToPage(
                                          i,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect: WormEffect(
                                        spacing: 8,
                                        radius: 16,
                                        dotWidth: 16,
                                        dotHeight: 8,
                                        dotColor: Colors.grey.shade400,   
                                        activeDotColor: Color.fromARGB(255, 0, 0, 0),
                                        paintStyle: PaintingStyle.fill,
                                      ), controller: controller,
                                    ),
                      
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x3600000F),
                            offset: Offset(0, -1),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.food_bank,
                                      color: Color(0xFF57636C),
                                      size: 24,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ),
                                const Expanded(
                                  child: Text(
                                    'Chef In',
                                    style: TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF0F1113),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Your Phone Number...',
                                      labelStyle:const TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF57636C),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText: '+233 (04) 204-2056',
                                      hintStyle: const TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFF1F4F8),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16, 24, 0, 24),
                                    ),
                                    style: const TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF0F1113),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    maxLines: null,
                                    
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 32),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(
                                  onPressed: () async {
                                   
                                  },
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    side: const BorderSide(
                                      color: Color(0xFF57636C),
                                      width: 2,
                                    ),
                                  ),
                                  child: const Text("Sign In", 
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
