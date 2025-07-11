import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/model/secret/secrets.dart';

class SecretStateHolder extends Cubit<Secrets> {
  SecretStateHolder() : super(Secrets.empty());

  void setSecrets(String apiKey, String apiUrl) {
    final newState = Secrets(apiKey: apiKey, apiUrl: apiUrl);
    emit(newState);
  }
}
