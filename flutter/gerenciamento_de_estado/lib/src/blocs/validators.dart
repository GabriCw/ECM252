import 'package:email_validator/email_validator.dart';
import 'dart:async';

mixin Validators{
  final validateEmail = 
    StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink){
        if(EmailValidator.validate(email)){
          sink.add(email);
        }
        else{
          sink.addError('E-mail inválido');
        }
      },
    );

  final validatePassword = 
    StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink){
        //usar RegExp para verificar se password contém
        RegExp exp = RegExp(r'''
          ^                  # Âncora de início de linha
          (?=.*?[A-Z])       # Pelo menos uma letra maiúscula
          (?=.*?[a-z])       # Pelo menos uma letra minúscula
          (?=.*?[0-9])       # Pelo menos um dígito
          (?=.*?[!@#\$&*~])  # Pelo menos um caractere especial
          .{8,}              # Pelo menos 8 caracteres no total
          $                  # Âncora de fim de linha
        ''');
        if(exp.hasMatch(password)){
          sink.add(password);
        }
        else{
          sink.addError('Senha inválida');
        }
      },
    );
}