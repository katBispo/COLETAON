import 'package:coletaon/Menu.dart';
import 'package:coletaon/aaa.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ColetaON',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 141, 231),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Color.fromARGB(255, 31, 141, 231),
                height: 100, //altura da caixinha branca
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //COLOCAR A CAIXINHA DE DENTRO AQ
          Positioned(
            left: 20,
            right: 20,
            bottom: 17,
            child: Container(
              width: 100, //largura
              height: 600, //altura caixa branca de dentro
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 41, 91, 133),
                      ),
                    ),
                    SizedBox(
                        height:
                            75), //distancia das caixinhas ate a palavra login
                    Container(
                      width: MediaQuery.of(context).size.width * 0.76,
                      height: 50, // Ajuste a altura do campo de e-mail aqui
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.17),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.25)),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          labelText: 'E-mail',
                          labelStyle:
                              TextStyle(color: Colors.black.withOpacity(0.35)),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.76,
                      height: 50, // Ajuste a altura do campo de senha aqui
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.17),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.25)),
                      ),
                      child: TextField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          labelText: 'Senha',
                          labelStyle:
                              TextStyle(color: Colors.black.withOpacity(0.35)),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black.withOpacity(
                                  0.3), // Definindo a cor do ícone com opacidade reduzida
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      //container para colocar botao em "esqueceu senha"
                      height: 60,
                      alignment: Alignment.center,
                      child: TextButton(
                        child: Text(
                          'Esqueceu sua Senha?',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue, fontSize: 15.6),
                        ),
                        onPressed: () {
                          //Navigator.push(
                          //context,
                          //MaterialPageRoute(builder: (context) => resetSenha()),
                          //);
                        },
                      ),
                    ),
                    Container(
                      //container para colocar botao em "esqueceu senha"
                      height: 60,
                      alignment: Alignment.center,
                      child: TextButton(
                        child: Text(
                          'Cadastre-se',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue, fontSize: 15.6),
                        ),
                        onPressed: () {
                          //Navigator.push(
                          //context,
                          //MaterialPageRoute(builder: (context) => resetSenha()),
                          //);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top:
                              20), // Ajusta a margem superior conforme necessário
                      child: ElevatedButton(
                        onPressed: () {
                          // Navega para a página de login quando o botão é pressionado
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Menu()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green, // Altere para a cor desejada
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.76,
                              50), // Defina a largura e a altura desejadas
                        ),
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(color: Colors.white),
                        ), // Texto do botão
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: kToolbarHeight -
                65, // Adiciona a distância do topo igual à altura da AppBar menos um valor adicional (20)
            left: 0,
            right: 0, // Centraliza horizontalmente
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Alinha os elementos do Row no centro horizontalmente
              children: [
                Text(
                  'Coleta',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight:
                          FontWeight.bold), // Adiciona a fonte mais grossa
                ),
                Text(
                  'ON',
                  style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(255, 95, 230, 101),
                      fontWeight:
                          FontWeight.bold), // Adiciona a fonte mais grossa
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
