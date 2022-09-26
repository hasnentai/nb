import 'package:flutter/material.dart';
import 'package:nativebase_flutter/models/borders_model.dart';
import 'package:nativebase_flutter/models/spaces_model.dart';
import 'package:nativebase_flutter/nativebase_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      title: 'Flutter Demo',
      home: NativeBaseProvider(
        theme: NativeBaseTheme(spaces: NBSpaces(d10: 100)),
        child: const NativeBaseExample(),
      ),
    );
  }
}

class NativeBaseExample extends StatefulWidget {
  const NativeBaseExample({super.key});

  @override
  State<NativeBaseExample> createState() => _NativeBaseExampleState();
}

class _NativeBaseExampleState extends State<NativeBaseExample> {
  @override
  Widget build(BuildContext context) {
    print(NativeBaseProvider.of(context).spaces.d10);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Box(
              child: Text("hello"),
              color: Colors.red,
              p: '500',
            ),
            Container(
              padding: p10(),
              color: Colors.red,
              child: Text("red"),
            ),
            Box(child: Text("Hello"))
          ],
        ),
      ),
    );
  }
}
