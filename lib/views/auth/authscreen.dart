import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen'; //name of this route
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isSignin = true;
  var signUpkey = GlobalKey<FormState>();
  var signInkey = GlobalKey<FormState>();
  void _signUpSubmit() {
    final isValid = signUpkey.currentState!.validate(); //is user is valid( all details are correct)
    if (!isValid) //is not valid
    {
      return;
    }
    signUpkey.currentState!.save(); //save the user to data base
  }

  void _signInSubmit() {
    final isValid = signInkey.currentState!.validate(); //is user is valid( all details are correct)
    if (!isValid) //is not valid
    {
      return;
    }
    signInkey.currentState!.save(); //save the user to data base
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isSignin
            ? SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height - 180,
                      child: Form(
                        key: signInkey,
                        child: Column(
                          children: [
                            Text("Sign in With your email Id",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sign In",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: Text("Forget Password",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ))),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value)) {
                                  return 'Enter a valid email!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  ))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              validator: (value) {
                                RegExp regex = RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                if (value!.isEmpty) {
                                  return 'Please enter password';
                                } else {
                                  if (value.length < 6) {
                                    return 'Enter valid password';
                                  } else {
                                    return null;
                                  }
                                }
                              },
                              obscureText:
                                  true, //hide the password while typing
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  ))),
                            ),
                            CheckboxListTile(
                              value: true,
                              onChanged: (value) {},
                              title: Text("Show Password"),
                            ),
                            CheckboxListTile(
                              value: true,
                              onChanged: (value) {},
                              title: Text("Keep Me Signed In"),
                            ),
                            InkWell(
                              onTap: () => _signInSubmit(),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 2 -
                                            60,
                                    vertical: 20),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  border: Border(),
                                ),
                                child: Text("Sign In"),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("New to UltraCart ?"),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 2 -
                                            90,
                                    vertical: 20),
                                decoration: BoxDecoration(
                                  color: Colors.orange[200],
                                  border: Border(),
                                ),
                                child: Text("Create New Account"),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                    "Condition of Use and Privacy Notice")),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )

            /////CREATE ACCOUNT
            ////CREATE ACCOUNT
            /////CREATE ACCOUNT
            : SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height - 180,
                      child: Form(
                        key: signUpkey,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Create Account",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) return "Please enter Name";
                                return null; //else
                              },
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  ))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value)) {
                                  return 'Enter a valid email!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  ))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (value) {
                                RegExp regex = RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                if (value!.isEmpty) {
                                  return 'Please enter password';
                                } else {
                                  if (value.length < 6) {
                                    return 'Enter valid password';
                                  } else {
                                    return null;
                                  }
                                }
                              },
                              obscureText:
                                  true, //hide the password while typing
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  ))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (value) {
                                RegExp regex = RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                if (value!.isEmpty) {
                                  return 'Please re-enter password';
                                } else {
                                  if (value.length < 6) {
                                    return 'Enter valid password';
                                  } else {
                                    return null;
                                  }
                                }
                              },
                              obscureText:
                                  true, //hide the password while typing
                              decoration: InputDecoration(
                                  hintText: "Re-Enter Password",
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.red,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                  ))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () => _signUpSubmit(),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 2 -
                                            80,
                                    vertical: 20),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  border: Border(),
                                ),
                                child: Text("Create Account"),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("Already a Customer ?"),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isSignin = true;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 2 -
                                            90,
                                    vertical: 20),
                                decoration: BoxDecoration(
                                  color: Colors.orange[200],
                                  border: Border(),
                                ),
                                child: Text("Sign in "),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                    "By Creating a Account You Agree UltraCart Condition of Use and Privacy Notice")),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ));
  }
}
