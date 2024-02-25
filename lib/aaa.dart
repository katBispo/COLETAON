import 'package:flutter/material.dart';

class aaa extends StatefulWidget {
  const aaa({Key? key}) : super(key: key);

  @override
  State<aaa> createState() => _MenuState();
}

class _MenuState extends State<aaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Coleta',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ON',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 95, 230, 101),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 3, // Ajuste aqui para mover para cima
                    right: 10,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 91, 34, 34),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  //CAIXA DE BUSCAR
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Buscar',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Positioned(
                left: 40,
                right: 20,
                bottom: 50,
                top: 5,
                child: Container(
                  width: 400,
                  height: 598,
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
