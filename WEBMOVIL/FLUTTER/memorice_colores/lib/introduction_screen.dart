import 'package:flutter/material.dart';
import 'difficulty_selection_screen.dart';

class IntroductionScreen extends StatelessWidget {
  final TextEditingController _nombreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/INICIO.JPG'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'MEMORICE COLORES',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Solitreo'),
                ),
              ),
              SizedBox(height: 260),
              ElevatedButton(
                onPressed: () {
                  // Redirige a la pantalla DifficultySelectionScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DifficultySelectionScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
                child: Text('COMENZAR', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
