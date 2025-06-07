part of 'connection_listener_cubit.dart';

@freezed
sealed class ConnectionState with _$ConnectionState{
  const factory ConnectionState.connected() = Connected;
  const factory ConnectionState.disconnected() = Disconnected;

}
