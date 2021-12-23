import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (
          BuildContext context,
          Widget? child,
        ) {
          return const Scaffold(
            body: Center(
              child: Text('Learn English!'),
            ),
          );
        },
      );
}
