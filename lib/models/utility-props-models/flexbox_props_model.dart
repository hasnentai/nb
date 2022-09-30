import 'package:nativebase_flutter/builder/props_builder.dart';

class FlexBoxProps extends PropsBuilder {
  final String? alignment;

  FlexBoxProps(this.alignment);

  @override
  Map<String, dynamic> toJson() {
    return {"alignment": alignment};
  }
}
