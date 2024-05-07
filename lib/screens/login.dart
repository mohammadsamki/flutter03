import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _password2 = '';
  String _genderType = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a valid email';
                      } else if (!value.contains('@') && !value.contains('.')) {
                        return 'Please enter a valid email that contain @ or .';
                      }
                    },
                    onSaved: (newValue) {
                      setState(() {
                        _email = newValue!;
                        print(_email);
                      });
                    },
                  ),
                  TextFormField(
                      decoration: InputDecoration(hintText: "Password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a valid password';
                        } else if (value.length < 6) {
                          return 'Please enter a valid password that is at least 6 characters long';
                        }
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          _password = value;
                        });
                      },
                      obscureText: true,
                      onSaved: (newValue) {
                        setState(() {
                          _password = newValue!;
                          print(_password);
                        });
                      }),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Confirm Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a valid password';
                      } else if (_password != value) {
                        return 'Passwords do not match';
                      }
                    },
                  ),
                  Container(
                      // margin: EdgeInsets.only(top: 20, right: 300, bottom: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'this is text',
                        style: TextStyle(),
                      )),
                  FormField(
                      validator: (value) {
                        print(value);
                        if (value == null) {
                          print("error");
                          return 'Please select a gender';
                        }
                      },
                      onSaved: (value) {},
                      builder: (FormFieldState) {
                        return ListTile(
                          title: Text("male"),
                          leading: Radio<String>(
                            value: "male",
                            groupValue: _genderType,
                            onChanged: (value) {
                              setState(() {
                                _genderType = value!;
                              });
                            },
                          ),
                        );
                      }),
                  ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        print("error");
                      } else {
                        _formKey.currentState!.save();
                      }
                      // Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
