import 'package:flutter/material.dart';

class Helper {
  static bool passBreakPointViewPort(BuildContext context) =>
      MediaQuery.of(context).size.width <= 480;
}
