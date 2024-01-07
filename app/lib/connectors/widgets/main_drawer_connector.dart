import 'package:async_redux/async_redux.dart';
import 'package:business/redux/app_state.dart';
import 'package:business/redux/session/actions/log_out_action.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/drawers/main_drawer.dart';

class MainDrawerConnector extends StatelessWidget {
  const MainDrawerConnector({
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _Vm>(
        debug: this,
        vm: () => _Factory(this),
        builder: (context, vm) => MainDrawer(
          vm: vm.drawer,
        ),
      );
}

/// Factory that creates a view-model for the StoreConnector.
class _Factory extends VmFactory<AppState, MainDrawerConnector, _Vm> {
  _Factory(super._connector);

  @override
  _Vm fromStore() {
    const username = 'username';

    return _Vm(
      drawer: MainDrawerVm(
        username: username,
        onLogout: () async => dispatchAsync(LogOutAction()),
      ),
    );
  }
}

/// The view-model holds the part of the Store state the dumb-widget needs.
class _Vm extends Vm with EquatableMixin {
  _Vm({
    required this.drawer,
  });

  final MainDrawerVm drawer;

  @override
  List<Object?> get props => [drawer];
}
