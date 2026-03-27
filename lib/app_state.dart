import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _empresaRef = prefs.getString('ff_empresaRef')?.ref ?? _empresaRef;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _menuExpandido = true;
  bool get menuExpandido => _menuExpandido;
  set menuExpandido(bool value) {
    _menuExpandido = value;
  }

  DocumentReference? _empresaRef;
  DocumentReference? get empresaRef => _empresaRef;
  set empresaRef(DocumentReference? value) {
    _empresaRef = value;
    value != null
        ? prefs.setString('ff_empresaRef', value.path)
        : prefs.remove('ff_empresaRef');
  }

  String _brandPrimaryHex = '#03142C';
  String get brandPrimaryHex => _brandPrimaryHex;
  set brandPrimaryHex(String value) {
    _brandPrimaryHex = value;
  }

  String _brandSecondaryHex = '#1DF3D0';
  String get brandSecondaryHex => _brandSecondaryHex;
  set brandSecondaryHex(String value) {
    _brandSecondaryHex = value;
  }

  String _effectivePrimaryHex = '#03142C';
  String get effectivePrimaryHex => _effectivePrimaryHex;
  set effectivePrimaryHex(String value) {
    _effectivePrimaryHex = value;
  }

  String _effectiveSecondaryHex = '#1DF3D0';
  String get effectiveSecondaryHex => _effectiveSecondaryHex;
  set effectiveSecondaryHex(String value) {
    _effectiveSecondaryHex = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
