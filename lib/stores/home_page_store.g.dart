// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageStore on HomePageStoreBase, Store {
  late final _$pontosNosAtom =
      Atom(name: 'HomePageStoreBase.pontosNos', context: context);

  @override
  int get pontosNos {
    _$pontosNosAtom.reportRead();
    return super.pontosNos;
  }

  @override
  set pontosNos(int value) {
    _$pontosNosAtom.reportWrite(value, super.pontosNos, () {
      super.pontosNos = value;
    });
  }

  late final _$pontosElesAtom =
      Atom(name: 'HomePageStoreBase.pontosEles', context: context);

  @override
  int get pontosEles {
    _$pontosElesAtom.reportRead();
    return super.pontosEles;
  }

  @override
  set pontosEles(int value) {
    _$pontosElesAtom.reportWrite(value, super.pontosEles, () {
      super.pontosEles = value;
    });
  }

  late final _$vitoriasNosAtom =
      Atom(name: 'HomePageStoreBase.vitoriasNos', context: context);

  @override
  int get vitoriasNos {
    _$vitoriasNosAtom.reportRead();
    return super.vitoriasNos;
  }

  @override
  set vitoriasNos(int value) {
    _$vitoriasNosAtom.reportWrite(value, super.vitoriasNos, () {
      super.vitoriasNos = value;
    });
  }

  late final _$vitoriasElesAtom =
      Atom(name: 'HomePageStoreBase.vitoriasEles', context: context);

  @override
  int get vitoriasEles {
    _$vitoriasElesAtom.reportRead();
    return super.vitoriasEles;
  }

  @override
  set vitoriasEles(int value) {
    _$vitoriasElesAtom.reportWrite(value, super.vitoriasEles, () {
      super.vitoriasEles = value;
    });
  }

  late final _$gravarDadosAsyncAction =
      AsyncAction('HomePageStoreBase.gravarDados', context: context);

  @override
  Future<void> gravarDados() {
    return _$gravarDadosAsyncAction.run(() => super.gravarDados());
  }

  late final _$HomePageStoreBaseActionController =
      ActionController(name: 'HomePageStoreBase', context: context);

  @override
  void setPontosNos(String op) {
    final _$actionInfo = _$HomePageStoreBaseActionController.startAction(
        name: 'HomePageStoreBase.setPontosNos');
    try {
      return super.setPontosNos(op);
    } finally {
      _$HomePageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPontosEles(String op) {
    final _$actionInfo = _$HomePageStoreBaseActionController.startAction(
        name: 'HomePageStoreBase.setPontosEles');
    try {
      return super.setPontosEles(op);
    } finally {
      _$HomePageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVitoriasNos(String op) {
    final _$actionInfo = _$HomePageStoreBaseActionController.startAction(
        name: 'HomePageStoreBase.setVitoriasNos');
    try {
      return super.setVitoriasNos(op);
    } finally {
      _$HomePageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVitoriasEles(String op) {
    final _$actionInfo = _$HomePageStoreBaseActionController.startAction(
        name: 'HomePageStoreBase.setVitoriasEles');
    try {
      return super.setVitoriasEles(op);
    } finally {
      _$HomePageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pontosNos: ${pontosNos},
pontosEles: ${pontosEles},
vitoriasNos: ${vitoriasNos},
vitoriasEles: ${vitoriasEles}
    ''';
  }
}
