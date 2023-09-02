//exibir Hello, Flutter

//importar a biblioteca
import 'package:flutter/material.dart';

//escrever a função main
void main(){

  //construir o Widget que exibe o texto
  const app = MaterialApp(
    home: Text('Hello, Flutter'),
  );

  //exibir o Widget
  runApp(app);

}

//hot reload: r
//hot restart: shift + r
//full restart: Ctrl + c