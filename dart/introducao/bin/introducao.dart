import 'dart:math';

void main(){
  final gerador = Random();
  final n1 = gerador.nextInt(6); //[0, 6[
  final n2 = gerador.nextInt(10) + 1; //[1, 10]
  final n3 = gerador.nextInt(101); //[0, 101[
  final n4 = gerador.nextDouble(); //[0, 1[
  final n5 = gerador.nextDouble() * 100; //[0, 100[
  final n6 = gerador.nextDouble() *50 + 100; //[100, 150[

  //inteiro no intervalo de [17, 22]
  final n7 = gerador.nextInt(6) + 17;

  //real no intervalo de [2500, 3500[
  final n8 = gerador.nextDouble() * 1000 + 2500;

  final vaiChover = gerador.nextBool();
}


//////////////////////////////////////////////////////////////////////////////


// import 'dart:io';

// void main(){
//   //stdin: standard input
//   //stdout: standard output

//   //entrada de dados
//   // var nome = stdin.readLineSync();
//   // print(nome); 

//   // var entrada = stdin.readLineSync();
//   // if (entrada != null){
//   //   //sound null safety
//   //   int idade = int.parse(entrada);
//   //   print(idade);
//   // } 

//   int idade = int.parse(stdin.readLineSync()!);
//   print(idade);
// }


//////////////////////////////////////////////////////////////////////////////


// enum DiaDaSemana{
//   segunda,
//   terca,
//   quarta,
//   quinta,
//   sexta,
//   sabado,
//   domingo
// }

// void main(){
//   print(DiaDaSemana.values);
//   DiaDaSemana dia = DiaDaSemana.segunda;
//   print(dia.index);
//   print(dia.name);
//   print(dia.runtimeType);
//   print(dia.toString());
//   switch(dia){
//     case DiaDaSemana.segunda:
//       print('NÃOOOOO');
//     case DiaDaSemana.terca || DiaDaSemana.quarta:
//       print(':(');
//     case DiaDaSemana.quinta || DiaDaSemana.sexta:
//       print(':)');
//     default:
//       print('=DD');
//   }

//   // final SEGUNDA = 0;
//   // final TERCA = 1;
// }


//////////////////////////////////////////////////////////////////////////////


// void main(){

//   //do/while
//   int contador = 0;
//   do{
//     print(++contador);
//   }while(contador < 10);

//   //while
//   int i = 0;
//   while(i < 10){
//     print(i);
//     i++;
//   }

//   //for each
//   var nomes = ['Ana', 'Pedro'];
//   for(String nome in nomes){
//     print(nome);
//   }

//   //for
//   for(int i = 0; i < 10; i++){
//     print(i);
//   }

//   // print('Hello, World');
// }