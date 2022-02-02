// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _CounterBase, Store {
  Computed<bool>? _$isPositiveComputed;

  @override
  bool get isPositive =>
      (_$isPositiveComputed ??= Computed<bool>(() => super.isPositive,
              name: '_CounterBase.isPositive'))
          .value;

  final _$counterValueAtom = Atom(name: '_CounterBase.counterValue');

  @override
  int get counterValue {
    _$counterValueAtom.reportRead();
    return super.counterValue;
  }

  @override
  set counterValue(int value) {
    _$counterValueAtom.reportWrite(value, super.counterValue, () {
      super.counterValue = value;
    });
  }

  final _$_CounterBaseActionController = ActionController(name: '_CounterBase');

  @override
  void increment() {
    final _$actionInfo = _$_CounterBaseActionController.startAction(
        name: '_CounterBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_CounterBaseActionController.startAction(
        name: '_CounterBase.decrement');
    try {
      return super.decrement();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restore() {
    final _$actionInfo = _$_CounterBaseActionController.startAction(
        name: '_CounterBase.restore');
    try {
      return super.restore();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counterValue: ${counterValue},
isPositive: ${isPositive}
    ''';
  }
}
