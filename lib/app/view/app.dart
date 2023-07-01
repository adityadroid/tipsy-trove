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
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.black54,
            unselectedLabelColor: Colors.black38,
            labelPadding: EdgeInsets.all(2)),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
