import 'package:shmr_finance/core/local_holders/secret_state_holder.dart';
import 'package:yx_scope/yx_scope.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SecretInitializer implements AsyncLifecycle {
  final SecretStateHolder _secretStateHolder;

  SecretInitializer(this._secretStateHolder);

  @override
  Future<void> dispose() async {
    dotenv.clean();
  }

  @override
  Future<void> init() async {
    await dotenv.load(fileName: 'assets/.env');
    final apiKey = dotenv.get('API_KEY');
    final apiUrl = dotenv.get('API_URL');

    _secretStateHolder.setSecrets(apiKey, apiUrl);
  }
}
