import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:logging/logging.dart';
import 'ui/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  void _setupLogging() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen(
      (rec) {
        log('${rec.level.name}: ${rec.time}: ${rec.message}');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainScreen(),
    );
  }
}
