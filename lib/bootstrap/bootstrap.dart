import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:drinks_rest_api/drinks_rest_api.dart';
import 'package:flutter/widgets.dart';
import 'package:tipsy_trove/bootstrap/app_bloc_observer.dart';
import 'package:tipsy_trove/bootstrap/flavor_config.dart';
import 'package:tipsy_trove/bootstrap/injection_container.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
) async {
  ///Setup error logging and bloc observer
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  Bloc.observer = const AppBlocObserver();

  /// Initalise API and repository layers
  final options = BaseOptions(baseUrl: FlavorConfig.getInstance().apiBaseUrl);
  final dio = Dio(options);
  final drinksApi = DrinksRestApi(dio: dio);
  final drinksRepository = DrinksRepository(api: drinksApi);

  runApp(
    InjectionContainer(
      drinksRepository: drinksRepository,
      child: await builder(),
    ),
  );
}
