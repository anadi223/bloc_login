import 'dart:async';

import 'package:login_with_bloc/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

//ADD DATA TO STREAM
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  Stream<bool> get submitValid => Rx.combineLatest2(email, password,
      (a, b) => true); //*THis is rx implementation used for submit button

  ///////Change DATA FROM STREAM
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;
    print('The valid email entered is $validEmail');
    print('The valid pass entered is $validPassword');
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

// !final bloc = Bloc(); //This was used for single instance of bloc but now we will use scoped instance
// !using inherited widget provider
