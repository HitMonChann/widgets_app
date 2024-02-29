import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Soy un snackbar'),
      action: SnackBarAction(label: 'Aceptar', onPressed: () {}),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
          'Aute laborum qui est ipsum magna sit minim. Mollit proident enim magna in aute duis. Eiusmod sint eu aute labore et sunt. Minim occaecat id reprehenderit in exercitation ad Lorem voluptate voluptate ipsum veniam dolore dolore. Elit ad id tempor culpa velit ex commodo do irure anim. Nisi tempor cupidatat et laboris ex sit voluptate consequat duis exercitation culpa quis deserunt quis. Commodo occaecat nostrud eu ullamco adipisicing incididunt aliquip.',
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Cerrar'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Adipisicing ex amet consequat cillum laborum ipsum amet nisi esse adipisicing. Laborum veniam proident nulla do voluptate cillum eu consequat dolor ipsum ex laborum. Incididunt cillum adipisicing cupidatat ad amet tempor ex. Dolor nostrud labore ipsum nulla consequat. Non laboris in et eiusmod veniam mollit. Consequat quis cillum adipisicing occaecat exercitation sunt. Dolor ipsum nisi ut anim dolor veniam aute ullamco.'),
                ]);
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showCustomSnackbar(context);
        },
        label: const Text('Mostar el snackbar'),
        icon: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
