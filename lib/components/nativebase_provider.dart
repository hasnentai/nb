import 'package:flutter/material.dart';
import 'package:nativebase_flutter/nativebase_flutter.dart';

class NativeBaseProvider extends StatefulWidget {
  final NativeBaseTheme theme;
  final Widget child;
  final NativeBaseTheme? extendedTheme;

  const NativeBaseProvider({
    Key? key,
    required this.theme,
    required this.child,
    this.extendedTheme,
  }) : super(key: key);

  static NativeBaseTheme of(BuildContext context) {
    final NativeBaseTheme theme =
        context.findAncestorWidgetOfExactType<NativeBaseProvider>()!.theme;

    return theme;
  }

  @override
  State<NativeBaseProvider> createState() => _NativeBaseProvider();
}

class _NativeBaseProvider extends State<NativeBaseProvider> {
  late BuildContext myContext;

  @override
  Widget build(BuildContext context) {
    myContext = context;
    print(context.widget);
    return widget.child;
  }
}
