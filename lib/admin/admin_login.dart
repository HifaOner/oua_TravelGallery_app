import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
    TextEditingController usernamecontroller = new TextEditingController();
    TextEditingController userpasswordcontroller = new TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFededeb),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/plane.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 80),
              child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Text(
                        "",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rowdies"),
                      ),
                      Center(
                        child: SizedBox(
                          height: 30,
                        ),
                      ),
                      Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(children: [
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: 20, bottom: 5, top: 5),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromARGB(255, 160, 160, 147),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: TextFormField(
                                controller: usernamecontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Enter Username';
                                  }
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Username",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: 20, bottom: 5, top: 5),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromARGB(255, 160, 160, 147),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: TextFormField(
                                controller: userpasswordcontroller,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Enter Password';
                                  }
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              )),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: (){
                                
                              },
                              child: Column(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    width: MediaQuery.of(context).size.width,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                                  Color.fromARGB(
                                                      255, 19, 105, 24))),
                                      onPressed: () {},
                                      child: Text(
                                        "Login",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 12.0),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    width: MediaQuery.of(context).size.width,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                                  Color.fromARGB(
                                                      255, 19, 105, 24))),
                                      onPressed: () {},
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SignInButton(Buttons.Google, onPressed: () {}),
                      //SignInButton(Buttons.Email, onPressed: (){}),
                      SignInButton(Buttons.Pinterest, onPressed: () {}),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
