import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/data/local/abstract/local_repository.dart';
import 'package:shmr_finance/core/logger/logger.dart';

part 'connection_listener_state.dart';
part 'connection_listener_cubit.freezed.dart';

class ConnectionStatusStateHolder extends Cubit<ConnectionState> {
  // final LocalRepository _repository;
  final Connectivity _connectivity = Connectivity();
  StreamSubscription? _subscription;
  ConnectionStatusStateHolder(
    // this._repository
    )
      : super(ConnectionState.disconnected()) {
    _initNetworkListener();
  }

  void _onCheckNetwork(List<ConnectivityResult> status)  {
    // final status = await _connectivity.checkConnectivity();
    if (status.first != ConnectivityResult.none &&
        state == ConnectionState.connected()) {
      emit(ConnectionState.connected());
      // _repository.compareData();
    } else {
      emit(ConnectionState.disconnected());
    }
  }

  void _initNetworkListener() {
    _subscription = _connectivity.onConnectivityChanged.listen((status) {
      Logger.log('New status : ${status.first}',
          tag: LogTags.connectionListener.tag);
      _onCheckNetwork(status);
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
