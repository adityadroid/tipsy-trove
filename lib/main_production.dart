import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tipsy_trove/app/app.dart';
import 'package:tipsy_trove/bootstrap/bootstrap.dart';
import 'package:tipsy_trove/bootstrap/flavor_config.dart';
import 'package:tipsy_trove/gen/assets.gen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// This is where you initialize the flavor
  await dotenv.load(fileName: Assets.config.production);
  FlavorConfig.fromMap(dotenv.env);
  await bootstrap(
    () => const App(),
  );
}
