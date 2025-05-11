import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hi from custom Snackbar!'),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars & Dialogs')),
      body: const _CustomDialog(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Show Snackbar'),
        icon: Icon(Icons.remove_red_eye_rounded),
      ),
    );
  }
}

class _CustomDialog extends StatelessWidget {
  const _CustomDialog();

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Custom Alert Dialog'),
          content: const Text(
            'This is just an information text about the custom alert dialog, you can close it whenever you want to do it.',
          ),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(
                context: context,
                children: [
                  const Text(
                    'Here you can see the full list of licenses that this project is using.\n\nPlease, do not forget to review these.',
                  ),
                ],
              );
            },
            child: const Text('Used Licenses'),
          ),
          FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Show Dialog'),
          ),
        ],
      ),
    );
  }
}
