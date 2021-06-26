import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//! MAIN // MODO LOCAL TEST //

//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';

// import 'View/Cadastro de Usuario/tela_cadastro_usuario.dart'; 

// main () {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'lovepeople',
//       home: CadastroUsuario(),
//       debugShowCheckedModeBanner: false,
//     );    
//   }
// }

class CadastroUsuario extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); 
  final nomeController = TextEditingController(); //! hacer validaciones de todos los campos del formulario. estudiar
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      backgroundColor: Color(0xFFA901F7),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(50),
                ),
                Container(
                  child: Text(
                    'Vamos começar!',
                    style: TextStyle(
                      fontFamily: 'Montserrat-SemiBold', //! usar fuente lovepeople
                      color: Colors.white.withOpacity(1),
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 38,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Nome',
                      hintStyle: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',                        
                        color: Color(0xFF3101B9),
                        fontSize: 16,
                        height: 2.8,
                      ),
                    ),
                    controller: nomeController,
                    autofocus: true,                    
                    keyboardType: TextInputType.name,   
                    maxLines: 1,              
                    cursorColor: Color(0xFF3101B9), //* opcional
                    style: TextStyle(
                      color: Color(0xFF3101B9), //* opcional
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 38,                  
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Número de telefone, email ou CPF',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',                      
                        color: Color(0xFF3101B9),
                        fontSize: 16,
                        height: 2.8,                        
                      ),
                    ),
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    maxLines: 1,                  
                    cursorColor: Color(0xFF3101B9),
                    style: TextStyle(
                      color: Color(0xFF3101B9),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 38,                              
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Senha',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',                      
                        color: Color(0xFF3101B9),
                        fontSize: 16,
                        height: 2.8,                           
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye), //! cambiar ojo padron por icono lovepeople
                    ),
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    maxLines: 1,                  
                    obscureText: true,
                    obscuringCharacter: '*',                              
                    cursorColor: Color(0xFF3101B9),
                    style: TextStyle(
                      color: Color(0xFF3101B9),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 38,                        
                  child: TextFormField(       
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Confirmar senha',
                      suffixIcon: Icon(Icons.remove_red_eye),//! cambiar ojo padron por icono lovepeople
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        color: Color(0xFF3101B9),
                        fontSize: 16,
                        height: 2.8,                         
                      ),
                    ),
                    autofocus: true,
                    keyboardType: TextInputType.text,  
                    maxLines: 1,                                  
                    obscureText: true,
                    obscuringCharacter: '*',                     
                    cursorColor: Color(0xFF3101B9),
                      style: TextStyle(
                        color: Color(0xFF3101B9),
                      ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                        cadastrar();
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
                ),
                SizedBox(
                  height: 150,
                ),
                Container( //! usar un widget. buscar.
                  child: Text(
                    '.................................................................................',
                    style: TextStyle(
                      color: Colors.white.withOpacity(1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(//! colocar en una Row(). estudiar
                  child: GestureDetector(//! no. estudiar
                    onTap: () {
                      jaPossuiCadastro();
                    },
                    child: Text( 
                      'Já possui cadastro? Entrar', //! cambiar colores
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',                        
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
