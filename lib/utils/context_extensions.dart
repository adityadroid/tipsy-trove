import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double get height {
    return MediaQuery.of(this).size.height;
  }

  ThemeData get theme {
    return Theme.of(this);
  }

  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }
}
