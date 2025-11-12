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
  double degre = 0; 

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

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur--;
                      });
                    },
                    icon: const Icon(Icons.remove),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur = 0;
                      });
                    },
                    icon: const Icon(Icons.refresh),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur++;
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              
              const Text("Merci de choisir le degré de rotation"),
              Slider(
                value: degre,
                min: 0,
                max: 360,
                onChanged: (value) {
                  setState(() {
                    degre = value;
                  });
                },
              ),
              Text("Le degré choisi est ${degre.toStringAsFixed(0)}"),
            ],
          ),
        ),
      ),
    );
  }
}
