import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {

  // final _formKey = GlobalKey<FormState>();
  // final imputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA901F7),
      body: SafeArea(
        child: Form(          
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(50),
                ),
                Text(
                  'Vamos começar!',
                  style: TextStyle(
                    color: Colors.white.withOpacity(1),
                    fontSize: 30,
                    //fontFamily: 'Montserrat-SemiBold',
                    ),
                  ),
                SizedBox(
                  height: 20,
                ),
                TextFormField( // mejor que TextField, tiene funciones mais avancadas que TextField. Dentro de un Form, puede usar para validar multiplos campos de entrada a la vez (nome, email, senha, etc)
                  decoration: InputDecoration(                  
                    labelText: 'Nome',
                    border: OutlineInputBorder(),               
                  ),                  
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Número de telefone, email ou CPF',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    //prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirmar senha',
                    border: OutlineInputBorder(),
                    //prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(                      
                  onPressed: (
                  ) {
                    
                  },
                  child: Text('Cadastrar'),                      
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
