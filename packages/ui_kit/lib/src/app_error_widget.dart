import 'package:flutter/material.dart';

/// {@template error_widget}
/// widget to show error message
class AppErrorWidget extends StatelessWidget {
  /// {@macro error_widget}
  const AppErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Icon(
        Icons.error_outline,
        size: 80,
      ),
    );
  }
}
