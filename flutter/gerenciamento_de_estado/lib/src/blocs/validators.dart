import 'dart:async';

import 'package:email_validator/email_validator.dart';
mixin Validators{
  final validateName = StreamTransformer<String, String>.fromHandlers(
    handleData: (name, sink){
      if(name.length > 3){
        sink.add(name);
      }
      else{
        sink.addError('Pelo menos quatro caracteres');
      }
    },
  );
  final validateEmail = 
    StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink) {
        if (EmailValidator.validate(email)){
          sink.add(email);
        }
        else{
          sink.addError('E-mail inválido');
        }  
      },
    );
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      //usar RegExp para verificar se password contém
      //pelo menos uma maiúscula
        RegExp exp = RegExp("[A-Z]+");
        if(!exp.hasMatch(password)){
          sink.addError('Pelo menos uma maiúscula');
        }
        else if(password.length < 4){
          sink.addError('Pelo menos quatro caracteres');
        }
        else{
          sink.add(password);
        }
      //pelo menos uma minúscula
      //pelo menos um dígito
      //pelo menos um caractere especial
      //pelo menos 8 caracteres

    },
  );
}