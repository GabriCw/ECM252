void main(){

  var portugues = {'Brasil', 'Portugal'};
  var europa = {'Espanha', 'Portugal', 'Alemanha'};

  //mostre todos os países, tirando aqueles que falam português e são da europa simultaneamete
  print(portugues.union(europa).difference(portugues.intersection(europa)));

  // var A = {1, 2, 3, 4, 5, 6};
  // var B = {1, 3, 7};
  // print(A.union(B)); //{1, 2, 3, 4, 5, 6, 7}
  // print(A.intersection(B)); //{1, 3}
  // print(A.difference(B)); //{2, 4, 5, 6}
  // print(B.difference(A)); //{7}
  // print(A.difference(A)); //{}

  // var numeros = {1, 2, 3};
  // print(numeros[0]); //não dá
  // print(numeros.elementAt(0));
  // //Set
  // //{1, 2} = {2, 1} = {1, 1, 1, 1, 1, 2, 1, 2, 1}
  // var nomes = {'Ana', 'João'}; //Set<String>
  // var teste = {}; //Map<dynamic, dynamic>
  // var outroTeste = <String>{}; //Set<String>
  // var outroTeste2 = <String, String>{}; //Map<String, String>

  // var tupla = ('Ana', 1, true);
  // tupla.$1 = "ANa Maria";
  // //tuplas ou records
  // print(tupla.$2);
  // print(tupla.$4);
  // print(tupla);
  // print(tupla.runtimeType);
}
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