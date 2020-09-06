import 'package:flutter/material.dart';
import 'package:login_with_bloc/bloc/provider.dart';

import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
          title: 'Flutter Demo',
          home: Scaffold(
            body: SafeArea(child: LoginPage()),
          )),
    );
  }
}
