import 'package:anatomize/pages/login.dart';
import 'package:flutter/material.dart';

class PasswordResetPage extends StatefulWidget {
  @override
  _PasswordResetPageState createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _passwordsMatch = true;
  bool _obspass = true;

  void _showoff() {
    setState(() {
      _obspass = !_obspass;
    });
  }

  void _checkPasswordMatch() {
    setState(() {
      _passwordsMatch =
          _newPasswordController.text == _confirmPasswordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Password Reset'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Row(
                  children: const [
                    Text(
                      "Enter new password",
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
                child: TextField(
                  controller: _newPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'New Password',
                    suffixIcon: GestureDetector(
                      onTap: _showoff,
                      child: Icon(
                          _obspass ? Icons.visibility : Icons.visibility_off),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
                child: Row(
                  children: const [
                    Text(
                      "Re-enter password",
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
                child: TextField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  onChanged: (value) => _checkPasswordMatch(),
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    suffixIcon: GestureDetector(
                      onTap: _showoff,
                      child: Icon(
                          _obspass ? Icons.visibility : Icons.visibility_off),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    errorText:
                        !_passwordsMatch ? 'Passwords do not match' : null,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (_passwordsMatch) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        actionsAlignment: MainAxisAlignment.center,
                        backgroundColor: Colors.green,
                        content: const Text(
                          'Password Reset Successful',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              // Navigator.pop(context, 'OK');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: const Text(
                              'Yes🔫',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('Passwords do not match'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text('Reset Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
