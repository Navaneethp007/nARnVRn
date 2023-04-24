import 'package:anatomize/pages/forgot.dart';
import 'package:anatomize/pages/signup.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obspass = true;
  TextEditingController _pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _formkey = GlobalKey<FormState>();
  String _username = '', _password = '';
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
              Container(
                padding: const EdgeInsets.only(
                    top: 20.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Row(
                  children: const [
                    Text(
                      "Username",
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
                          hintText: "Enter your username",
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
                          hintText: "password",
                          labelText: "password",
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.length < 6) {
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
                      'Incorrect username or password',
                      style: TextStyle(color: Colors.red),
                    )
                  : Container( ),
              const SizedBox(height: 10.0),
              TextButton(
                onPressed: _submit,
                child: const Text('Login'),
              ),
              const SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PasswordResetPage()),
                  );
                },
                child: const Text('Forgot password?'),
              ),
              const SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SigninPage()),
                  );
                },
                child: const Text('Create account/Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState?.validate() == true || _formkey.currentState?.validate() == true) {
      _formKey.currentState?.save();
      _formkey.currentState?.save();
      if(!_isIncorrect)
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  const Home()),
        );
      }
      setState(() {
        _isIncorrect = true;
      });
    }
  }
}
