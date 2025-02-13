import 'package:flutter/material.dart';
import 'package:widgets_package/theme/white_color_scheme.dart';

class DialogBox extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback? onPressedOk;
  final IconData? icone;
  final bool? showCancel;
  final VoidCallback? onPressedCancel;
  final Color? corIcone;

  const DialogBox({
    super.key,
    required this.title,
    required this.content,
    this.onPressedOk,
    this.icone,
    this.showCancel,
    this.onPressedCancel,
    this.corIcone,
  });

  @override
  Widget build(BuildContext context) {
    final WhiteColorScheme colorScheme = WhiteColorScheme();

    return AlertDialog(
      title: Row(
        children: [
          Icon(
            icone ?? Icons.warning,
            color: corIcone ?? colorScheme.laranja,
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
        if (showCancel?? false)
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o diálogo
                if (onPressedCancel != null) {
                  onPressedCancel!(); // Chama a função de callback (se houver)
                }
              },
              child: const Text('Cancelar'),
            ),
      ],
    );
  }
}

/// Exibe um diálogo personalizado.
///
/// [context] é o contexto da construção do widget.
/// [title] é o título do diálogo.
/// [content] é o conteúdo do diálogo.
/// [onPressedOk] é a função de callback que será chamada quando o botão "OK" for pressionado.
/// [onPressedCancel] é a função de callback que será chamada quando o botão "Cancelar" for pressionado.
/// [corIcone] é a cor do ícone exibido no diálogo.
/// [showCancel] indica se o botão "Cancelar" deve ser exibido.
/// [icon] é o ícone exibido no diálogo.
///
/// Exemplo de uso:
/// ```dart
/// showCustomDialog(
///   context: context,
///   title: 'Título do Diálogo',
///   content: 'Conteúdo do Diálogo',
///   onPressedOk: () {
///     // Código a ser executado quando o botão "OK" for pressionado.
///   },
///   onPressedCancel: () {
///     // Código a ser executado quando o botão "Cancelar" for pressionado.
///   },
///   corIcone: Colors.red,
///   showCancel: true,
///   icon: Icons.error,
/// );
/// ```
void showCustomDialog({
  required BuildContext context,
  required String title,
  required String content,
  VoidCallback? onPressedOk,
  VoidCallback? onPressedCancel,
  Color? corIcone,
  bool showCancel = false,
  IconData icon = Icons.warning,
}) {
  try {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogBox(
          title: title,
          content: content,
          onPressedOk: onPressedOk,
          showCancel: showCancel,
          onPressedCancel: onPressedCancel,
          icone: icon,
          corIcone: corIcone,
        );
      },
    );
  } catch (e) {
    throw Exception(e);
  }
}
