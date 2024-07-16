import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apex/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(contexr) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            alignment: Alignment.center,
            height: screenHeight,
            width: screenWidth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.5,0.5],
                colors: [
                  Color.fromARGB(255, 76, 0, 255),
                  Colors.white
                ]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w400
                  )
                ),
                Container(
                  height: screenHeight*0.6,
                  width: screenWidth*0.9,
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 163, 163, 163),
                        offset: Offset(1, 1),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Form(
                        child: Column(
                          children: [
                            Container(
                              height: screenHeight*0.06,
                              width: screenWidth*0.75,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  fillColor: Color.fromARGB(255, 245, 241, 255),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 236, 236, 236),
                                    ),
                                  ),
                                  labelText: 'Email',
                                  floatingLabelStyle: TextStyle(
                                    color: Colors.black
                                  )

                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight*0.05,),
                            Container(
                              height: screenHeight*0.06,
                              width: screenWidth*0.75,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  fillColor: Color.fromARGB(255, 245, 241, 255),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 236, 236, 236),
                                    ),
                                  ),
                                  labelText: 'Password',
                                  floatingLabelStyle: TextStyle(
                                    color: Colors.black
                                  )

                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.fromLTRB(0, 5, 20, 10),
                              child: Text('Forgot Password ?',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              width: screenWidth*0.75,
                              decoration: BoxDecoration(
                                color: ApexColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: TextButton(
                                onPressed: (){

                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: ApexColor,
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ),
                            ),
                            Container(
                              child: Text('OR'),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(MdiIcons.google)
                                  ),
                                  IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(MdiIcons.microsoft)
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Don\'t have an account ? ',
                                    style: TextStyle(
                                      )
                                  ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context,'/register');
                                },
                                child: const Text('Register Here.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold 
                                    )
                                ),
                              )
                                ],
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
