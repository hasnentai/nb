import 'package:flutter/material.dart';
import 'package:nativebase_flutter/nativebase_flutter.dart';
import 'package:nativebase_flutter/theme/base/spaces.dart';

EdgeInsetsGeometry p10() {
  return EdgeInsets.all(nbBaseSpaces.d10!);
}

EdgeInsetsGeometry p(BuildContext context) {
  return EdgeInsets.all(NativeBaseProvider.of(context).spaces.d10!);
}
