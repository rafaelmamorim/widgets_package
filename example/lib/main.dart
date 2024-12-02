import 'package:flutter/material.dart';
import 'package:widgets_package/widgets_package.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Adicione isso se quiser ocultar o banner de debug
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de Widgets'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomTextBox(
            labelText: 'User',
          ),
          const SizedBox(height: 20),
          const CustomTextBox(
            labelText: 'Pass',
            isPassword: true,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              showCustomDialog(
                context,
                'Alert',
                'This is an alert message',
              );
            },
            child: const Text('Click me!'),
          ),
        ],
      ),
    );
  }
}
