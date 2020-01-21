
import 'package:flutter/services.dart';

class Navigation {

static Future popNavigation() async {
  const platform = const MethodChannel('myflutterengine');
  await platform.invokeMethod('pop');
}


}