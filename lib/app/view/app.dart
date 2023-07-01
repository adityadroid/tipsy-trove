import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/material.dart';
import 'package:tipsy_trove/home/view/view.dart';
import 'package:tipsy_trove/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
          colorSchemeSeed: const Color(0xFFFFCA28),
          primaryColorLight: const Color(0xFFFFDF7E),
          appBarTheme: const AppBarTheme(color: Color(0xFFFFCA28)),
          tabBarTheme: const TabBarTheme(
            labelPadding: EdgeInsets.all(2),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Color(0xFFFFF2CB))),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
