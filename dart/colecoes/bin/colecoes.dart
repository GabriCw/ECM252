void main(){

  //collection-for
  var nomes1 = ['Ana', 'Pedro'];

  var nomes2 = [
    'Cristina', 
    'João',
    for (final nome in nomes1) nome
  ];

  print(nomes2);

  var nomes3 = [
    'Ana Maria',
    ...nomes1, //operador spread
    ...nomes2 //operador spread
  ];

  print(nomes3);

  //collection-if
  var idadePedro = 17;
  var idadeMaria = 19;
  var idadeJoao = 22;

  //lista
  var somenteMaior = [
    'Cristina',
    if (idadePedro >= 18) 'Pedro' else 'nada',
    if (idadeMaria >= 18) 'Maria' else 'nada',
    idadeJoao >= 18 ? 'João' : 'nada'
  ];

  print(somenteMaior);

  //coleções
  //titulo, gênero, notas
  var filme = {
    'titulo': "Titanic",
    'genero': "Romance",
    'notas': [5, 1, 2, 5]
  };

  var filme2 = {
    'titulo': "Star Wars",
    'genero': "Ficção Científica", 
    'notas': [5, 5]
  };

  var filmes = [filme, filme2];
  print(filmes);
}

// //escreva um programa que permita ao usuário armazenar a sua lista de contatos
// //contatos possuem um nome e um número de telefone
// //deve ser possível realizar as 4 operações básicas de um CRUD
// //o armazenamento deve ser feito em um mapa
// //deve haver um menu: 1-C para criar, 2-R para ler, 3-U para atualizar, 4-D para deletar, 5-S para sair
// //um par chave/valor tem como chave o nome do contato e seu valor associado é seu número de telefone

// import 'dart:io';

// void main() {
//   Map<String, String> contatos = {};

//   while (true) {
//     print("\nMenu:");
//     print("1-Criar contato");
//     print("2-Ler contato");
//     print("3-Atualizar contato");
//     print("4-Deletar contato");
//     print("5-Sair\n");
//     stdout.write("Escolha uma opção: ");
//     String opcao = stdin.readLineSync() ?? "";

//     switch (opcao) {
//       case "1":
//         criarContato(contatos);
//         break;
//       case "2":
//         lerContato(contatos);
//         break;
//       case "3":
//         atualizarContato(contatos);
//         break;
//       case "4":
//         deletarContato(contatos);
//         break;
//       case "5":
//         print("\nSaindo do programa.");
//         return;
//       default:
//         print("\nOpção inválida.");
//     }
//   }
// }

// void criarContato(Map<String, String> contatos) {
//   stdout.write("\nDigite o nome do contato: ");
//   String nome = stdin.readLineSync() ?? "";
//   stdout.write("Digite o número de telefone: ");
//   String telefone = stdin.readLineSync() ?? "";

//   contatos[nome] = telefone;
//   print("\nContato criado com sucesso.");
// }

// void lerContato(Map<String, String> contatos) {
//   stdout.write("\nDigite o nome do contato a ser lido: ");
//   String nome = stdin.readLineSync() ?? "";

//   if (contatos.containsKey(nome)) {
//     print("");
//     print("Nome: $nome, Telefone: ${contatos[nome]}");
//   } else {
//     print("\nContato não encontrado.");
//   }
// }

// void atualizarContato(Map<String, String> contatos) {
//   stdout.write("\nDigite o nome do contato a ser atualizado: ");
//   String nome = stdin.readLineSync() ?? "";

//   if (contatos.containsKey(nome)) {
//     stdout.write("Digite o novo número de telefone: ");
//     String novoTelefone = stdin.readLineSync() ?? "";

//     contatos[nome] = novoTelefone;
//     print("\nContato atualizado com sucesso.");
//   } else {
//     print("\nContato não encontrado.");
//   }
// }

// void deletarContato(Map<String, String> contatos) {
//   stdout.write("\nDigite o nome do contato a ser deletado: ");
//   String nome = stdin.readLineSync() ?? "";

//   if (contatos.containsKey(nome)) {
//     contatos.remove(nome);
//     print("\nContato deletado com sucesso.");
//   } else {
//     print("\nContato não encontrado.");
//   }
// }



// void main(){
  
//   // //keys, values e entries
//   // var pessoa = <String, Object>{
//   //   'nome': 'Ana',
//   //   'idade': 18
//   // };

//   // //keys
//   // var chaves = pessoa.keys;
//   // print(chaves.runtimeType);
//   // for (final chave in chaves) {
//   //   print(chave);
//   //   print(pessoa[chave]);
//   // }

//   // //values
//   // var valores = pessoa.values;
//   // for (final valor in valores) {
//   //   print(valor);
//   // }

//   // //entries
//   // var entradas = pessoa.entries;
//   // for (final entry in entradas) {
//   //   print(entry);
//   //   print(entry.key);
//   //   print(entry.value);
//   // }

//   // //type annotation
//   // var pessoa = <String, dynamic>{'nome': "João"};
//   // print(pessoa['nome'].runtimeType);

//   // var nome = pessoa['nome'];

//   // Map <String, Object> pessoa = {
//   //   'nome': 'Ana',
//   //   'idade': 19
//   // };

//   // // print(pessoa.nome); //não funciona
//   // print(pessoa['nome']);
//   // print(pessoa['altura']);

//   // var teste = {
//   //   Girafa(): Pessego()
//   // };

//   // var lembretes = {
//   //   1: 'Fazer café',
//   //   2: 'Ver um filme'
//   // };

//   // var pessoa = {
//   //   'nome': 'Ana',
//   //   'idade': 22,
//   //   'altura': 1.8,
//   //   'deMaior': true
//   // }; //mapa
//   // print(pessoa.runtimeType);

//   // var pessoa2 = {
//   //   'idade': 29,
//   //   'altura': 1.8
//   // };
//   // print(pessoa2.runtimeType);
// }

// void main(){

//   var portugues = {'Brasil', 'Portugal'};
//   var europa = {'Espanha', 'Portugal', 'Alemanha'};

//   //mostre todos os países, tirando aqueles que falam português e são da europa simultaneamete
//   print(portugues.union(europa).difference(portugues.intersection(europa)));

//   // var A = {1, 2, 3, 4, 5, 6};
//   // var B = {1, 3, 7};
//   // print(A.union(B)); //{1, 2, 3, 4, 5, 6, 7}
//   // print(A.intersection(B)); //{1, 3}
//   // print(A.difference(B)); //{2, 4, 5, 6}
//   // print(B.difference(A)); //{7}
//   // print(A.difference(A)); //{}

//   // var numeros = {1, 2, 3};
//   // print(numeros[0]); //não dá
//   // print(numeros.elementAt(0));
//   // //Set
//   // //{1, 2} = {2, 1} = {1, 1, 1, 1, 1, 2, 1, 2, 1}
//   // var nomes = {'Ana', 'João'}; //Set<String>
//   // var teste = {}; //Map<dynamic, dynamic>
//   // var outroTeste = <String>{}; //Set<String>
//   // var outroTeste2 = <String, String>{}; //Map<String, String>

//   // var tupla = ('Ana', 1, true);
//   // tupla.$1 = "ANa Maria";
//   // //tuplas ou records
//   // print(tupla.$2);
//   // print(tupla.$4);
//   // print(tupla);
//   // print(tupla.runtimeType);
// }
// import 'dart:io';
// import 'dart:math';

// void main(){
//   var jogoUsuario = <int> [];

//   //permitir que o usuário jogue, cuidando da repetição
//   while(jogoUsuario.length < 6){
//     stdout.writeln('Escolha o próximo número');
//     var numero = int.parse(stdin.readLineSync()!);
//     if( numero < 1 || numero > 60){
//       stdout.writeln('Você não pode escolher $numero');
//       continue; //ignora oq vem abaixo dessa linha e volta pro início do wile
//     }
//     if(jogoUsuario.contains(numero)){
//       stdout.writeln('O número ${numero} já foi escolhido');
//       continue;
//     }
//     jogoUsuario.add(numero);
//   }

//   //sortear seis números, sem repetição
//   var gerador = Random();
//   List <int> jogoSorteado = [];
//   while(jogoSorteado.length < 6){
//     var numero = gerador.nextInt(60) + 1;
//     if(!jogoSorteado.contains(numero)){
//       jogoSorteado.insert(0, numero);
//     }
//   }
//   //ordenar as duas listas
//   jogoUsuario.sort(); //o método sort opera in place -> ele altera a estrutura da lista, não gera outra
//   jogoSorteado.sort();
//   stdout.writeln('Jogo Usuário: $jogoUsuario');
//   stdout.writeln('Jogo Máquina: $jogoSorteado');

//   //verificar quais itens o jovem acertou
//   var numerosAcertados = <int>[];
//   for (var numero in jogoUsuario) {
//     if (jogoSorteado.contains(numero)) {
//       numerosAcertados.add(numero);
//     }
//   }

//   //se ele ganhou, avise
//   if(numerosAcertados.length == 6){
//     stdout.writeln('Parabéns, você ganhou!');
//   }
//   else if(numerosAcertados.isEmpty){
//     stdout.writeln('Que pena! Você não acertou nenhum número');
//   }
//   else{
//     stdout.writeln('Que pena! Você acertou apenas $numerosAcertados');
//   }
// }

// void main( List<String> arguments){
//   print(arguments); //isso faz vc inserir valores pela linha de comando

//   // //type anotation
//   // var nomes = <String> [];

//   // List nomes = ['Ana'];
//   // nomes.add(1);

//   // //listas
//   // var nomes = ['Ana', 'Pedro']; //ArrayList 
//   // nomes.add('Cristina'); //adiciona no final
//   // print(nomes);
//   // nomes.insert(0, 'Maria');
//   // print(nomes);
//   // nomes.insert(nomes.length, 'João');
//   // nomes.insert(15, 'Pedro Silva'); //não faz insert se for maior que n+2 o tamanho da lista

//   // print(nomes.isEmpty);
//   // print(nomes.first);
//   // print(nomes.firstOrNull);

//   // //for
//   // for(var i = 0; i < nomes.length; ){
//   //   print(nomes[i++]);
//   // }

//   // //for each
//   // for(final nome in nomes){
//   //   print(nome);
//   // }

//   // print(nomes[0]);
//   // print(nomes[2]);
//   // print(nomes[-1]);
//   // print(nomes);
//   // print(nomes.toString());
// }