//exibir Hello, Flutter

//importar a biblioteca
import 'package:exibe_imagens/src/app.dart';
import 'package:flutter/material.dart';

//escrever a função main
void main(){

  //construir o Widget que exibe o texto
  final app = App();

  //exibir o Widget
  runApp(app);

}

//hot reload: r
//hot restart: shift + r
//full restart: Ctrl + c
//fluttler pub get --> baixa td q tem q baixar tipo um npm install