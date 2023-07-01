import 'package:flutter/material.dart';

///{@template loading_indicator}
///LoadingIndicator for the app
class LoadingIndicator extends StatelessWidget {
  ///{@macro loading_indicator}
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    );
  }
}
