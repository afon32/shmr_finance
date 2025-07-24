import 'package:shmr_finance/core/connection_listener/connection_listener_cubit.dart';

class FakeConnectionStatusStateHolder extends ConnectionStatusStateHolder {
  void connect() {
    emit(ConnectionStatusState.connected());
  }

  void disconnect() {
    emit(ConnectionStatusState.disconnected());
  }
}
