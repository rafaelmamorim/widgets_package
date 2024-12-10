import 'package:flutter/material.dart';

// Classe que estende ColorScheme para o tema claro
class WhiteColorScheme extends ColorScheme {
  // Construtor para o WhiteColorScheme
  WhiteColorScheme()
      : super(
          brightness: Brightness.light,
          primary: const Color(0xFF9d9d9c), // Cor principal
          onPrimary:
              Colors.white, // Cor para texto ou ícones em elementos primários
          secondary: const Color(0xFF03DAC6), // Cor secundária
          onSecondary: Colors.black, // Cor de texto em fundo branco
          surface: Colors
              .white, // Cor da superfície (elementos como cartões, botões)
          onSurface: Colors.black, // Cor de texto em superfícies
          error: const Color(0xFFB00020), // Cor de erro
          onError: Colors.white, // Cor de texto em mensagens de erro
          inverseSurface: Colors.black, // Cor invertida da superfície
          inversePrimary:
              const Color(0xFF6200EE), // Cor invertida da cor principal
          outline: Colors.grey, // Cor para bordas e contornos
          shadow: Colors.black, // Cor da sombra
        );

  // Cores personalizadas adicionais
  final Color accent = const Color(0xFF03DAC6); // Cor de destaque
  final Color textPrimary = Colors.black; // Cor de texto primário
  final Color textSecondary = Colors.grey; // Cor de texto secundário
  final Color primaryBackgroundColorButton = Colors.grey.shade200;  
  
  final Color branco = const Color(0xFFFFFFFF);
  final Color verde = Colors.green.shade900;
  final Color laranja = Colors.orange;
  final Color cinza = Colors.grey.shade800;
}
