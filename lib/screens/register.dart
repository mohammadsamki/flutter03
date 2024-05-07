import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  String _confirmPassword = "";
  String _firstName = "";
  String _lastName = "";
  Map _userData = {};
  List allUsers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign UP",
              style: TextStyle(fontSize: 40),
            ),
            Container(
              width: 400,
              child: Text(
                textAlign: TextAlign.center,
                "Please provide us with your information in order to Create your account",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 40),
                          width: 150,
                          // margin: EdgeInsets.only(right: 200),

                          child: Column(
                            children: [
                              TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    print("firstname: $_firstName");
                                    print("Please enter your f name");
                                    return "Please enter your email";
                                  }
                                  return null;
                                },
                                onSaved: (newValue) {
                                  setState(() {
                                    _firstName = newValue!;
                                    print("firstname: $_firstName");
                                  });
                                },
                                decoration: InputDecoration(
                                    labelText: "First Name",
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.start,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    hintText: "Enter your first name",
                                    hintStyle: TextStyle(fontSize: 10),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: 150,
                            // margin: EdgeInsets.only(right: 200),

                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Please enter your email";
                                    }
                                    return null;
                                  },
                                  onSaved: (newValue) {
                                    setState(() {
                                      _lastName = newValue!;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      floatingLabelAlignment:
                                          FloatingLabelAlignment.start,
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      labelText: "Last Name",
                                      hintStyle: TextStyle(fontSize: 10),
                                      hintText: "Enter your last name",
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      )),
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 350,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              print(!value!.contains('.') ||
                                  !value.contains('@'));
                              if (value!.isEmpty) {
                                return "Please enter your email";
                              } else if (!value.contains('.') ||
                                  !value.contains('@')) {
                                return "Please enter a valid email";
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              setState(() {
                                _email = newValue!;
                              });
                            },
                            decoration: InputDecoration(
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "email",
                                hintStyle: TextStyle(fontSize: 10),
                                hintText: "Enter your email",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(color: Colors.black),
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your email";
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              setState(() {
                                _password = newValue!;
                              });
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Password",
                                hintStyle: TextStyle(fontSize: 10),
                                hintText: "Enter your Password",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(color: Colors.black),
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your email";
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              setState(() {
                                _confirmPassword = newValue!;
                              });
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Confirm Password",
                                hintStyle: TextStyle(fontSize: 10),
                                hintText: "Enter your Confirm Password",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide(color: Colors.black),
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  print('pass');

                                  _userData = {
                                    'firstname': _firstName,
                                    'lastname': _lastName,
                                    'email': _email,
                                    'password': _password,
                                    'confirmPassword': _confirmPassword
                                  };
                                  allUsers.add(_userData);
                                  print(allUsers);
                                  print(_userData);
                                } else {
                                  print('error');
                                }
                              },
                              child: Text("Sign Up"))
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
