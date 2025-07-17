import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shmr_finance/core/shared_widgets/local_auth/components/pin_input_screen.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class ShmrBiometricAuthScreen extends StatefulWidget {
  final Widget child;

  const ShmrBiometricAuthScreen({required this.child, super.key});

  @override
  State<ShmrBiometricAuthScreen> createState() =>
      _ShmrBiometricAuthScreenState();
}

class _ShmrBiometricAuthScreenState extends State<ShmrBiometricAuthScreen> {
  final _auth = LocalAuthentication();
  bool _unlocked = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _authenticate() async {
    final canCheck = await _auth.canCheckBiometrics;
    final isAvailable = await _auth.isDeviceSupported();
    if (canCheck && isAvailable) {
      try {
        final authenticated = await _auth.authenticate(
          localizedReason: '',
          options: const AuthenticationOptions(stickyAuth: true),
        );
        setState(() => _unlocked = authenticated);
      } catch (e) {
        print(e);
        // setState(() => _unlocked = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
        builder: (context, scope) {
      if (scope.secureDataHolder.get.state.bioIsOn) {
        if (!_unlocked) {
          _authenticate();
        }
        return _unlocked
            ? widget.child
            : Center(
                child: scope.secureDataHolder.get.state.pin != 'none'
                    ? SizedBox(
                        height: 500,
                        width: 300,
                        child: PinInputScreen(onAccept: (pin) {
                          if (scope.secureDataHolder.get.validate(pin)) {
                            setState(() {
                              _unlocked = true;
                            });
                          }
                        }),
                      )
                    : CircularProgressIndicator(),
              );
      } else if (scope.secureDataHolder.get.state.pin != 'none') {
        return _unlocked
            ? widget.child
            : Center(
                child: scope.secureDataHolder.get.state.pin != 'none'
                    ? SizedBox(
                        height: 500,
                        width: 300,
                        child: PinInputScreen(onAccept: (pin) {
                          if (scope.secureDataHolder.get.validate(pin)) {
                            setState(() {
                              _unlocked = true;
                            });
                          }
                        }),
                      )
                    : CircularProgressIndicator(),
              );
      } else {
        return widget.child;
      }
    });
  }
}
