import 'package:exibe_imagens/src/models/image_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class App extends StatefulWidget{
  @override
  State <App> createState() {
    return AppState();
  }
}

class AppState extends State <App>{

  void obterImagem(){

    //1. Montar a URL incluindo: host, recurso e parâmetros de query (query, page, per_page)

    final url = Uri.https(
      'api.pexels.com',
      '/v1/search',
      {'query': 'cats', 'page': '$numeroImagens', 'per_page': '1'}
      );

    //2. Montar um objeto Request com: método get e a URL contruida anteriormente

    final req = http.Request('get', url);

    //3. Adicionar o header Authorization à requisição, associado à nossa chave pexels

    req.headers.addAll({'Authorization': '5vzx5FZnoKtLYReQQgoxOalCwaBowEngkTNxyaxGjBeEbsanKQfQYFs5'});

    //4. Enviar a requisição

    req.send().then((result){
      http.Response.fromStream(result).then((response){
        // print(response.body);
        //json(String) --> mapa<String, dynamic> --> ImageModel
        final decodedJSON = json.decode(response.body);
        final imagem = ImageModel.fromJSON(decodedJSON);
        print(imagem);
        setState(() {
          numeroImagens++;
        });
      });
    });
  }

  int numeroImagens = 1;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minhas imagens'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: obterImagem,
          child: Icon(Icons.add_a_photo),
        ),
        body: Text('Imagens: $numeroImagens'),
      ),
    );
  }
}