import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'View/Cadastro de Tarefa/tela_cadastro_tarefa.dart';
import 'View/Cadastro de Usuario/tela_cadastro_usuario.dart';
import 'View/Listagem de Tarefas/tela_listagem_tarefas.dart';
=======

import 'View/Cadastro de Tarefa/tela_cadastro_tarefa.dart';
import 'View/Cadastro de Usuario/tela_cadastro_usuario.dart';
import 'View/Listagem de Tarefas/tela_listagem_tarefas.dart';


>>>>>>> master
import 'View/Login/tela_login.dart';
import 'View/Recuperar Login e Senha/recupera.dart';
import 'View/Sucesso de Cadastro/tela_sucesso_cadastro.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
=======

>>>>>>> master
      initialRoute: "login",
      routes: {
        "login": (context) => LoginPage(),
        "telaCadastro": (context) => RegisterUser(),
        "sucesso": (context) => RegisterSuccess(),
        "telaCadastroTarefa": (context) => CadastroTarefa(),
        "listaTarefa": (context) => TelaTarefas(),
        "recupera": (context) => RecuperaSenha(),
      },
<<<<<<< HEAD
=======

      title: 'lovepeople',
      home: LoginPage(),

>>>>>>> master
      debugShowCheckedModeBanner: false,
    );
  }
}
