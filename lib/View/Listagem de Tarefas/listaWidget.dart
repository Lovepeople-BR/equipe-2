import 'package:flutter/material.dart';
import 'package:todo_lovepeople/Model/Listagem%20de%20Tarefas/listagemTarefa.dart';
import 'package:todo_lovepeople/View/Listagem%20de%20Tarefas/popup%20Excluir/dialog_excluir_tarefa.dart';

class TarefaWidget extends StatelessWidget {
  final ListaTarefa listatarefa;
  final VoidCallback ontap;

  const TarefaWidget({Key? key, required this.listatarefa, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(int.parse(listatarefa.color!)),
      margin: EdgeInsets.all(20),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        title: Text(
          listatarefa.title!,
          style: TextStyle(
            color: Color(0xFF3101B9),
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'Montserrat-SemiBold',
          ),
        ),
        subtitle: Text(
          listatarefa.description!,
          style: TextStyle(
            color: Color(0xFF3101B9),
            fontWeight: FontWeight.bold,
            fontSize: 15,
            fontFamily: 'Tahoma',
          ),
        ),
        trailing: Icon(Icons.delete_outline_outlined),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => excluir(context),
          );
        },
      ),
    );
  }
}