import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  
  int compteur = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Atelier 4 - StatefulWidget"),
              const SizedBox(height: 20),

              
              Text("La valeur du compteur est : $compteur"),

              const SizedBox(height: 20),

              
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    compteur++;
                  });
                },
                child: const Text("Incrémenter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
