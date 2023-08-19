//DESAFIO:
  //dar o import para captura de dados
  //dar o import para geração de valores aleatórios
  //enum com {1: pedra, 2: papel, 3: tesoura, 4: sair}
  //exibir menu
  //capturar a opção do usuário, fazendo validação com do/while
  //se o usuário digitar 4, sair
  //senão, sortear a opção do computador
  //mapear a opção do usuário de int pra enum
  //mapear a opção do computador de int pra enum
  //exibir as opções de cada um
  //você (pedra) vs (tesoura) computador
  //verificar o resultado (vencedor ou empate) e exibir
  //exibir *********************************
  //esperar 5 segundos


//RESOLUÇÃO:
import 'dart:io';
import 'dart:math';

enum Opcao { 
  pedra, 
  papel, 
  tesoura, 
  sair }
void main(){
  do {

    print('''
    Escolha uma opção:
    1 - Pedra
    2 - Papel
    3 - Tesoura
    4 - Sair
    ''');

    int escolhaUsuario = int.parse(stdin.readLineSync()!);
    
    if (escolhaUsuario == 4) {
      print('''
      Saindo...
      Obrigado por jogar!
      ''');
      break;
    } else if (escolhaUsuario < 1 || escolhaUsuario > 3) {
      print('''
      Opção inválida. Escolha uma opção válida.
      ''');
      continue;
    }

    Opcao opcaoUsuario = Opcao.values[escolhaUsuario - 1];
    Opcao opcaoComputador = Opcao.values[Random().nextInt(3)];

    print('''
    *********************************
    Você($opcaoUsuario) vs Computador($opcaoComputador)
    ''');

    if (opcaoUsuario == opcaoComputador) {
      print('''
      Deu Empate!
      ''');
    } else if ((opcaoUsuario == Opcao.pedra && opcaoComputador == Opcao.tesoura) ||
        (opcaoUsuario == Opcao.papel && opcaoComputador == Opcao.pedra) ||
        (opcaoUsuario == Opcao.tesoura && opcaoComputador == Opcao.papel)) {
      print('''
      Você venceu!
      ''');
    } else {
      print('''
      Computador venceu!
      ''');
    }

    print('''
    Aguarde para jogar novamente...
    *********************************
    ''');

    sleep(Duration(seconds: 5));
  } while (true);
}