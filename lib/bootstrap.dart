import 'dart:async';
import 'package:cart_product_test/core/depedency_injector/database_injector.dart';
import 'package:cart_product_test/core/depedency_injector/notifier_injector.dart';
import 'package:cart_product_test/core/depedency_injector/repositories_impl_injector.dart';
import 'package:flutter/widgets.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  DatabaseInjector.init();
  RepositoriesImplInjection.init();
  NotifierInjection.init();
  DatabaseInjector.init();
  runApp(await builder());
}
