import 'package:flutter/material.dart';
import 'package:widgets_package/theme/white_color_scheme.dart';

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
    final WhiteColorScheme colorScheme = WhiteColorScheme();

    return AlertDialog(
      title: Row(
        children: [
          Icon(
            Icons.warning, // Ícone de alerta
            color: colorScheme.laranja,
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
