import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SumaPage extends StatefulWidget {
  const SumaPage({super.key});

  @override
  State<SumaPage> createState() => _SumaPageState();
}

class _SumaPageState extends State<SumaPage> {
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();

  double resultado = 0;

  void sumar() {
    double numero1 = double.tryParse(numero1Controller.text) ?? 0;
    double numero2 = double.tryParse(numero2Controller.text) ?? 0;

    setState(() {
      resultado = numero1 + numero2;
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
        title: const Text('Calculadora de Suma'),
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

            CustomButton(text: 'Calcular suma', onPressed: sumar),

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
