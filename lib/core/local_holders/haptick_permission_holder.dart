import 'package:flutter_bloc/flutter_bloc.dart';

class HaptickPermissionHolder extends Cubit<bool> {
  HaptickPermissionHolder() : super(true);

  void setValue(bool value){
    emit(value);
  }
}