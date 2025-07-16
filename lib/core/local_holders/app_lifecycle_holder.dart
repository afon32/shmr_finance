import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppLifecycleStateHolder extends Cubit<AppLifecycleState?> {
  AppLifecycleStateHolder() : super(null);

  void setLifecycleState(AppLifecycleState state){
    emit(state);
  }
}