import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(
        child: Column(
          children: [
            Text('Hello World!'),
            Text('Welcome to Flutter to Boreal College'),
            Container( 
              margin: EdgeInsets.all(20), 
              padding: EdgeInsets.all(16), 
              decoration: BoxDecoration( 
                color: const Color.fromARGB(255, 230, 238, 18), 
                borderRadius: BorderRadius.circular(30), 
              ), 
              child: Column(
                children: [
                  Text('Boîte stylisée avec Container', style: TextStyle(color: const Color.fromARGB(255, 80, 20, 230), fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Étudiante en Techniques des Systèmes Informatiques', style: TextStyle(color: const Color.fromARGB(255, 216, 7, 7))),
                ],
              
              ), 
            ),

            // (Garde le code précédent et rajoute ceci dans les children de la Column)
            Stack( 
              alignment: Alignment.topRight, 
              children: [ 
                Container(width: 200, height: 200, color: Colors.blue[100]), 
                Icon(Icons.star, size: 100, color: Colors.amber), 
                Text("Superposé !", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), 
              ], 
            ),
          ],

        ),
      )),
    );
  }
}