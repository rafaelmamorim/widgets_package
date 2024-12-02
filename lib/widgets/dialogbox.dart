import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback? onPressedOk;

  const DialogBox({
    super.key,
    required this.title,
    required this.content,
    this.onPressedOk,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          const Icon(
            Icons.warning, // Ícone de alerta
            color: Colors.orange,
          ),
          const SizedBox(width: 10),
          Text(title),
        ],
      ),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Fecha o diálogo
            if (onPressedOk != null) {
              onPressedOk!(); // Chama a função de callback (se houver)
            }
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}

/// Função auxiliar para mostrar o diálogo personalizado
/*void showCustomDialog(
  BuildContext context,
  String title,
  String content, {
  VoidCallback? onPressedOk,
}) {
  
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DialogBox(
        title: title,
        content: content,
        onPressedOk: onPressedOk,
      );
    },
  );
}*/

void showCustomDialog(
  BuildContext context,
  String title,
  String content, {
  VoidCallback? onPressedOk,
}) {
  try {
    assert(
        MaterialLocalizations.of(context) != null,
        'O contexto fornecido não possui MaterialLocalizations. '
        'Certifique-se de que o MaterialApp esteja corretamente configurado.');

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogBox(
          title: title,
          content: content,
          onPressedOk: onPressedOk,
        );
      },
    );
  } catch (e) {
    print("Erro ao exibir o diálogo: $e");
  }
}
