import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tipsy_trove/drink_detail/view/drink_detail_page.dart';
import 'package:tipsy_trove/drink_detail/view/random_drink_detail_page.dart';
import 'package:tipsy_trove/home/view/view.dart';
import 'package:tipsy_trove/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: HomePage.routeName,
            name: HomePage.routeName,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: DrinkDetailPage.routeName,
            name: DrinkDetailPage.routeName,
            builder: (context, state) => const DrinkDetailPage(),
          ),
          GoRoute(
            path: RandomDrinkDetailPage.routeName,
            name: RandomDrinkDetailPage.routeName,
            builder: (context, state) => const RandomDrinkDetailPage(),
          )
        ],
      ),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorSchemeSeed: const Color(0xFFFFCA28),
        primaryColorLight: const Color(0xFFFFDF7E),
        appBarTheme: const AppBarTheme(color: Color(0xFFFFF2CB), elevation: 10),
        tabBarTheme: const TabBarTheme(
          labelPadding: EdgeInsets.all(2),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFFF2CB),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
