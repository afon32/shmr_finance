import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainColorHolder extends Cubit<Color> {
  MainColorHolder() : super(Color.fromARGB(255, 42, 232, 129));
}