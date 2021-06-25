import 'package:flutter/material.dart';

class CadastroUsuario extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA901F7),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(50),
                ),
                Text(
                  //! Vamos começar!
                  'Vamos começar!',
                  style: TextStyle(
                    fontFamily: 'Montserrat-SemiBold',
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(1),
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //! Nome
                  keyboardType: TextInputType.name,
                  cursorColor: Color(0xFFA901F7), //* opcional
                  style: TextStyle(
                    color: Color(0xFFA901F7), //* opcional
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Nome',
                    hintStyle: TextStyle(
                      color: Color(0xFF3101B9),
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //! Número de telefone, email ou CPF
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xFFA901F7),
                  style: TextStyle(
                    color: Color(0xFFA901F7),
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Número de telefone, email ou CPF',
                    hintStyle: TextStyle(
                      color: Color(0xFF3101B9),
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //! Senha
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xFFA901F7),
                  style: TextStyle(
                    color: Color(0xFFA901F7),
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Senha',
                    hintStyle: TextStyle(
                      color: Color(0xFF3101B9),
                      fontSize: 17,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //! Confirmar senha
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xFFA901F7),
                  style: TextStyle(
                    color: Color(0xFFA901F7),
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Confirmar senha',
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',
                      color: Color(0xFF3101B9),
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(//! Cadastrar
                  onPressed: () {
//                    if (_formKey.currentState.validate()) {
//                      _formKey.currentState.save();
                      cadastrar();
//                    }
                  },
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',
                      color: Colors.white.withOpacity(1),
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF3101B9)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                Text(
                  '.................................................................................',
                  style: TextStyle(
                    color: Colors.white.withOpacity(1),
                    //fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  //!Já possui cadastro? Entrar
                  child: GestureDetector(
                    onTap: () {
                      jaPossuiCadastro();
                    },
                    child: Text(
                      'Já possui cadastro? Entrar',
                      style: TextStyle(
                        color: Colors.white.withOpacity(1),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void cadastrar() {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => tela_sucesso_cadastro(),
    //   ),
    // );
  }

  void jaPossuiCadastro() {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => tela_login(),
    //   ),
    // );
  }
}
