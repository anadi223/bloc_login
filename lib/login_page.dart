import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          emailField(),
          passwordField(),
          SizedBox(height: 20),
          submitField(),
        ],
      ),
    );
  }

  Widget submitField() {
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blue,
      onPressed: () {},
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter Email',
        labelText: 'Enter',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
      ),
    );
  }
}
