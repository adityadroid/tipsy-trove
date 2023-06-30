import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double get height {
    return MediaQuery.of(this).size.height;
  }
}
