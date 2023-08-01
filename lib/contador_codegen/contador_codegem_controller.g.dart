// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador_codegem_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContadorCodegemController on _ContadorCodegemControllerBase, Store {
  Computed<String>? _$saudacaoComputed;

  @override
  String get saudacao =>
      (_$saudacaoComputed ??= Computed<String>(() => super.saudacao,
              name: '_ContadorCodegemControllerBase.saudacao'))
          .value;

  late final _$counterAtom =
      Atom(name: '_ContadorCodegemControllerBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$fullNameAtom =
      Atom(name: '_ContadorCodegemControllerBase.fullName', context: context);

  @override
  FullNameCodegen get fullName {
    _$fullNameAtom.reportRead();
    return super.fullName;
  }

  @override
  set fullName(FullNameCodegen value) {
    _$fullNameAtom.reportWrite(value, super.fullName, () {
      super.fullName = value;
    });
  }

  late final _$_ContadorCodegemControllerBaseActionController =
      ActionController(
          name: '_ContadorCodegemControllerBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$_ContadorCodegemControllerBaseActionController
        .startAction(name: '_ContadorCodegemControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ContadorCodegemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeName() {
    final _$actionInfo = _$_ContadorCodegemControllerBaseActionController
        .startAction(name: '_ContadorCodegemControllerBase.changeName');
    try {
      return super.changeName();
    } finally {
      _$_ContadorCodegemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void rollbackName() {
    final _$actionInfo = _$_ContadorCodegemControllerBaseActionController
        .startAction(name: '_ContadorCodegemControllerBase.rollbackName');
    try {
      return super.rollbackName();
    } finally {
      _$_ContadorCodegemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
fullName: ${fullName},
saudacao: ${saudacao}
    ''';
  }
}
