import 'package:flutter/material.dart';
import 'package:widgets_package/widgets_package.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, 
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                context: context,
                title: 'Alert',
                content: 'This is an alert message',
                //showCancel: false,
                onPressedOk: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('You clicked OK')));
                },
              );
            },
            child: const Text('Click me!'),
          ),
        ],
      ),
    );
  }
}
