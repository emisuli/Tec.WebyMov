import 'package:flutter/material.dart';
import 'modo_facil_screen.dart';
import 'modo_dificil_screen.dart';

class DifficultySelectionScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/SELECCIONDEMODOS.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(top: 80.0, bottom: 20.0), // Ajusta el margen superior
                color: Colors.grey.withOpacity(0.1),
                child: Text(
                  'Niveles',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 150),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ModoFacilScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF87CEEB),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: Text('Fácil', style: TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                      SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ModoDificilScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF87CEEB),
                          padding: EdgeInsets.symmetric(horizontal: 46, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: Text('Difícil', style: TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
