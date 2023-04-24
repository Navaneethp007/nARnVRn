import 'package:anatomize/pages/login.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool _obspass = true;
  TextEditingController _pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _formkey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final _formkey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  String _username = '', _password = '', _email = '', _name = '', _age = '';
  bool _isIncorrect = false;
  void _showoff() {
    setState(() {
      _obspass = !_obspass;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Row(
                  children: const [
                    Text(
                      "Enter your name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Form(
                  key: _formKey2,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "full name",
                          labelText: "name",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onSaved: (value) => _name = value ?? '',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Row(
                  children: const [
                    Text(
                      "Enter a username",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "username",
                          labelText: "username",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onSaved: (value) => _username = value ?? '',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Row(
                  children: const [
                    Text(
                      "Enter your email",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Form(
                  key: _formkey1,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "email",
                          labelText: "email",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onSaved: (value) => _email = value ?? '',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Row(
                  children: const [
                    Text(
                      "Enter your age",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Form(
                  key: _formKey1,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "age",
                          labelText: "age",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty || value.length < 9) {
                            return 'Please enter an age greater than 9';
                          }
                          return null;
                        },
                        onSaved: (value) => _age = value ?? '',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Row(
                  children: const [
                    Text(
                      "Enter your password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 20.0, bottom: 20.0, left: 20.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration:  InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: _showoff,
                            child: Icon(_obspass
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          hintText: "Enter your password",
                          labelText: "password",
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.length < 6 || value.isEmpty) {
                            return 'Your password needs to be at least 6 characters';
                          }
                          return null;
                        },
                        onSaved: (value) => _password = value ?? '',
                        obscureText: _obspass,
                        controller: _pass,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              _isIncorrect
                  ? const Text(
                      'Incorrect details',
                      style: TextStyle(color: Colors.red),
                    )
                  : Container(),
              const SizedBox(height: 10.0),
              TextButton(
                onPressed: _submit,
                child: const Text('Sigin'),
              ),
              const SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState?.validate() == true || _formkey.currentState?.validate() == true || _formKey1.currentState?.validate() == true || _formkey1.currentState?.validate() == true || _formKey2.currentState?.validate() == true || _formKey2.currentState?.validate() == true) {
      _formKey.currentState?.save();
      _formkey.currentState?.save();
      _formKey1.currentState?.save();
      _formkey1.currentState?.save();
      _formKey2.currentState?.save();
      // Perform authentication here
      setState(() {
        _isIncorrect = true;
      });
    }
  }
}