import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class MultiplicacionPage extends StatefulWidget {
  const MultiplicacionPage({super.key});

  @override
  State<MultiplicacionPage> createState() => _MultiplicacionPageState();
}

class _MultiplicacionPageState extends State<MultiplicacionPage> {
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();

  double resultado = 0;

  void multiplicar() {
    double numero1 = double.tryParse(numero1Controller.text) ?? 0;
    double numero2 = double.tryParse(numero2Controller.text) ?? 0;

    setState(() {
      resultado = numero1 * numero2;
    });
  }

  @override
  void dispose() {
    numero1Controller.dispose();
    numero2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Multiplicación'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Ingrese dos números',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            CustomTextField(controller: numero1Controller, label: 'Número 1'),

            const SizedBox(height: 15),

            CustomTextField(controller: numero2Controller, label: 'Número 2'),

            const SizedBox(height: 20),

            CustomButton(
              text: 'Calcular multiplicación',
              onPressed: multiplicar,
            ),

            const SizedBox(height: 30),

            Text(
              'Resultado: $resultado',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
