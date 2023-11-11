import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';
class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(28.0),
      child: Column(
        children: [
          nameField(bloc),
          emailField(bloc),
          passwordField(bloc),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: submitButton(bloc)
                )
              ],
            ),
          )
            
        ],
      )
    );

  }

  Widget nameField(Bloc bloc){
    return StreamBuilder(
      stream: bloc.name,
      builder: (context, AsyncSnapshot<String> snapshot){
        return TextField(
          onChanged: bloc.changeName,
          decoration: InputDecoration(
            hintText: 'Nome',
            labelText: 'Digite seu nome',
            errorText: snapshot.error?.toString()
            // errorText: snapshot.hasError ? '${snapshot.error}' : null
          ),
        );
      },
    );
    //devolver um textfield
  }

  Widget emailField(Bloc bloc){
    return StreamBuilder(
      stream: bloc.email,
      builder:(context, AsyncSnapshot<String> snapshot){
        return TextField(
          onChanged: (newValue){
            bloc.changeEmail(newValue);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'seu@email.com',
            labelText: 'Digite seu e-mail',
            errorText: snapshot.hasError ? snapshot.error.toString() : null
          ),
        );
      }  
    );
    // return TextField(
    //   keyboardType: TextInputType.emailAddress,
    //   decoration: InputDecoration(
    //     hintText: 'seu@email.com',
    //     labelText: 'Digite seu e-mail'
    //   ),
    // );
  }

  Widget passwordField(Bloc bloc){
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, AsyncSnapshot<String> snapshot){
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          // keyboardType: TextInputType.visiblePassword,
          // keyboardAppearance: Brightness.dark,
          decoration: InputDecoration(
            hintText: 'Senha',
            labelText: 'Digite sua senha',
            errorText: snapshot.error?.toString()
            // errorText: snapshot.hasError ? '${snapshot.error}' : null
          ),
        );
      },
    );
    //devolver um textfield
  }

  Widget submitButton(Bloc bloc){
    return StreamBuilder(
      stream: bloc.nameEmailAndPasswordAreOk,
      builder:(context, AsyncSnapshot <bool> snapshot){
        return ElevatedButton(
          onPressed: snapshot.hasData ? () => bloc.submitForm(context) : null, 
          child: Text('Login')
        );
      }
    );
  }

}