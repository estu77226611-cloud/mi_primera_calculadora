import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'suma_page.dart';
import 'resta_page.dart';
import 'multiplicacion_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void navegar(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menú principal'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.calculate, size: 80),

            const Text(
              'Calculadora Básica',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(222, 21, 21, 190),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Seleccione una operación',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            CustomButton(
              text: 'Sumar',
              onPressed: () {
                navegar(context, const SumaPage());
              },
            ),

            const SizedBox(height: 15),

            CustomButton(
              text: 'Restar',
              onPressed: () {
                navegar(context, const RestaPage());
              },
            ),

            const SizedBox(height: 15),

            CustomButton(
              text: 'Multiplicar',
              onPressed: () {
                navegar(context, const MultiplicacionPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
