// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FutureController on FutureControllerBase, Store {
  late final _$nomefutureAtom =
      Atom(name: 'FutureControllerBase.nomefuture', context: context);

  @override
  ObservableFuture<String> get nomefuture {
    _$nomefutureAtom.reportRead();
    return super.nomefuture;
  }

  @override
  set nomefuture(ObservableFuture<String> value) {
    _$nomefutureAtom.reportWrite(value, super.nomefuture, () {
      super.nomefuture = value;
    });
  }

  late final _$buscarNomeAsyncAction =
      AsyncAction('FutureControllerBase.buscarNome', context: context);

  @override
  Future<void> buscarNome() {
    return _$buscarNomeAsyncAction.run(() => super.buscarNome());
  }

  @override
  String toString() {
    return '''
nomefuture: ${nomefuture}
    ''';
  }
}
