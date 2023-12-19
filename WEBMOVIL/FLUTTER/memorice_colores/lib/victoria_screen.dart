import 'package:flutter/material.dart';
import 'introduction_screen.dart';

class VictoriaScreen extends StatelessWidget {
  final int tiempo;

  VictoriaScreen({required this.tiempo});

  @override
  Widget build(BuildContext context) {
    // Redondea el tiempo al segundo más cercano
    int segundos = Duration(milliseconds: tiempo).inSeconds;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/VICTORIA.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('¡Has ganado!', style: TextStyle(fontSize: 40, color: Colors.black)),
              SizedBox(height: 40),
              Image.asset('assets/TROFEO.png', width: 100, height: 100),
              SizedBox(height: 40),
              Text('Tiempo Record:', style: TextStyle(fontSize: 20, color: Colors.black)),
              Text('$segundos segundos', style: TextStyle(fontSize: 20, color: Colors.black)),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Redirige a la pantalla IntroductionScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroductionScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF87CEEB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Borde circular del botón
                  ),
                ),
                child: Text('Volver al Inicio', style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
