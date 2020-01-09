// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on AppControllerBase, Store {
  final _$isLoggedAtom = Atom(name: 'AppControllerBase.isLogged');

  @override
  bool get isLogged {
    _$isLoggedAtom.context.enforceReadPolicy(_$isLoggedAtom);
    _$isLoggedAtom.reportObserved();
    return super.isLogged;
  }

  @override
  set isLogged(bool value) {
    _$isLoggedAtom.context.conditionallyRunInAction(() {
      super.isLogged = value;
      _$isLoggedAtom.reportChanged();
    }, _$isLoggedAtom, name: '${_$isLoggedAtom.name}_set');
  }

  final _$AppControllerBaseActionController =
      ActionController(name: 'AppControllerBase');

  @override
  void changeLoginState(bool value) {
    final _$actionInfo = _$AppControllerBaseActionController.startAction();
    try {
      return super.changeLoginState(value);
    } finally {
      _$AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
