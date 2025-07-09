part of 'connection_listener_cubit.dart';

@freezed
sealed class ConnectionStatusState with _$ConnectionStatusState{
  const factory ConnectionStatusState.connected() = Connected;
  const factory ConnectionStatusState.disconnected() = Disconnected;

}
