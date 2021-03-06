import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_lovepeople/Model/shared/functions.dart';
import 'package:todo_lovepeople/Presenter/lista_controler.dart';
import 'package:todo_lovepeople/View/Listagem%20de%20Tarefas/listaWidget.dart';

class TelaTarefas extends StatefulWidget {
  const TelaTarefas({Key? key}) : super(key: key);

  @override
  _TelaTarefasState createState() => _TelaTarefasState();
}

class _TelaTarefasState extends State<TelaTarefas> {
  @override
  void initState() {
    postFrame(() {
      context.read<ListaTarefaController>().getTasks("");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFA901F7),
      body: Consumer<ListaTarefaController>(builder: (_, controller, child) {
        return Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment(-1.0, -1.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                    color: Color(0xFFFFFFFF),
                  ),
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Image.asset(
                    'assets/image/logo_lovepeople.png',
                    height: 45,
                    width: 45,
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: Text(
                        "Suas Listagens",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Montserrat-SemiBold',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            palavraChave(controller),
            Expanded(
              child: ListView.builder(
                  itemCount: controller.tarefasList.length,
                  itemBuilder: (context, index) {
                    return TarefaWidget(
                      listatarefa: controller.tarefasList[index],
                      ontap: () {},
                    );
                  }),
            ),
          ],
        );
      }),
      bottomNavigationBar: adicionarTarefa(context),
    ));
  }

  Container adicionarTarefa(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.add_rounded),
        onPressed: () {
          Navigator.of(context).pushNamed("telaCadastroTarefa");
        },
        color: Color(0xFFFFFFFF),
        iconSize: 100,
      ),
    );
  }

  Padding palavraChave(ListaTarefaController controller) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 20,
        right: 20,
      ),
      child: TextField(
        onChanged: (text) {
          controller.filter(text);
        },
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search,
            size: 40,
            color: Color(0xFF3101B9),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          filled: true,
          hintStyle: TextStyle(
              color: Color(0xFF3101B9),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Tahoma'),
          hintText: "Busque palavras-chave",
          fillColor: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
