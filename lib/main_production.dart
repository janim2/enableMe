import 'package:flutter/material.dart';

import 'app/view/app.dart';
import 'bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await init();
  await bootstrap(
    () => const App(),
  );
}
