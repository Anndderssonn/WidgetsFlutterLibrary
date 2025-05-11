import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Progress Screen')),
      body: _ProgressView(colorScheme: colors),
    );
  }
}

class _ProgressView extends StatelessWidget {
  final ColorScheme colorScheme;

  const _ProgressView({required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text('Circular progress indicator'),
          const SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 2,
            color: colorScheme.inversePrimary,
            backgroundColor: colorScheme.primary,
          ),
          const SizedBox(height: 20),
          const Text('Circular progress controled'),
          const SizedBox(height: 10),
          _CircularProgressControled(colorScheme: colorScheme),
        ],
      ),
    );
  }
}

class _CircularProgressControled extends StatelessWidget {
  final ColorScheme colorScheme;

  const _CircularProgressControled({required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                color: colorScheme.inversePrimary,
                backgroundColor: colorScheme.primary,
              ),
              const SizedBox(width: 20),
              Expanded(child: LinearProgressIndicator(value: progressValue)),
            ],
          ),
        );
      },
    );
  }
}
