import 'dart:async';
import 'package:flutter/material.dart';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';
import 'package:cherry_toast/cherry_toast.dart';
class Bloc with Validators{
  final _emailController = BehaviorSubject <String>();
  final _passwordController = BehaviorSubject <String>();
  final _nameController = BehaviorSubject <String>();

  Stream <String> get name => _nameController.stream.transform(validateName);
  Stream <String> get email => _emailController.stream.transform(validateEmail);
  Stream <String> get password { return _passwordController.stream.transform(validatePassword);}

  Stream <bool> get nameEmailAndPasswordAreOk => CombineLatestStream.combine3(
    name, email, password, (n, e, p) => true
  );

  void submitForm(BuildContext context){
    final name = _nameController.value;
    final email = _emailController.value;
    final password = _passwordController.value;
    CherryToast.success(
      title: Text('$name, $email, $password'),
      action: Text('Teste'),
      actionHandler: (){
        CherryToast.success(
          title: Text('Sim, pode'),
        ).show(context);
      },
    ).show(context);
  }

  Function(String) get changeName => _nameController.sink.add;
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  void dispose(){
    _nameController.close();
    _emailController.close();
    _passwordController.close();
  }
  
}
// final bloc = Bloc();