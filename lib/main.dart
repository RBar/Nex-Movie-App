import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'auth/core/pages/app_widget.dart';
import 'injection.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
