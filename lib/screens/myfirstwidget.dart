import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.orange,
                  height: 70,
                  width: 70,
                ),
                Container(
                  color: Colors.yellow,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.orange,
                  height: 70,
                  width: 70,
                ),
                Container(
                  color: Colors.yellow,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.orange,
                  height: 70,
                  width: 70,
                ),
                Container(
                  color: Colors.yellow,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 4, 56, 17),
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: const Color.fromARGB(255, 19, 197, 63),
                  height: 70,
                  width: 70,
                ),
                Container(
                  color: const Color.fromARGB(255, 54, 244, 187),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 4, 56, 17),
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: const Color.fromARGB(255, 19, 197, 63),
                  height: 70,
                  width: 70,
                ),
                Container(
                  color: const Color.fromARGB(255, 54, 244, 187),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 4, 56, 17),
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: const Color.fromARGB(255, 19, 197, 63),
                  height: 70,
                  width: 70,
                ),
                Container(
                  color: const Color.fromARGB(255, 54, 244, 187),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 9, 11, 168),
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: const Color.fromARGB(239, 13, 101, 201),
                  height: 70,
                  width: 70,
                ),
                Container(
                  color: const Color.fromARGB(255, 64, 193, 253),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 9, 11, 168),
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: const Color.fromARGB(239, 13, 101, 201),
                  height: 70,
                  width: 70,
                ),
                Container(
                  color: const Color.fromARGB(255, 64, 193, 253),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 9, 11, 168),
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: const Color.fromARGB(239, 13, 101, 201),
                  height: 70,
                  width: 70,
                ),
                Container(
                  color: const Color.fromARGB(255, 64, 193, 253),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ],
        ),
        Container(
          color: const Color.fromARGB(255, 162, 0, 255),
          width: 350,
          height: 35,
          child: const Text(
            'Teste de Textos',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                //print('Esse é o Botão Esquerdo');
              },
              child: const Text('Esquerda'),
            ),
            ElevatedButton(
              onPressed: () {
                //print('Esse é o Botão Central');
              },
              child: const Text('Centro'),
            ),
            ElevatedButton(
              onPressed: () {
                //print('Esse é o Botão Direito');
              },
              child: const Text('Direita'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                //print('Esse é o Botão Esquerdo');
              },
              child: const Text('Esquerda'),
            ),
            ElevatedButton(
              onPressed: () {
                //print('Esse é o Botão Central');
              },
              child: const Text('Centro'),
            ),
            ElevatedButton(
              onPressed: () {
                //print('Esse é o Botão Direito');
              },
              child: const Text('Direita'),
            ),
          ],
        )
      ],
    );
  }
}
