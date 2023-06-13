import 'package:flutter/foundation.dart';

/// Simplest possible model, with just one field.
///
/// [ChangeNotifier] is a class in `flutter:foundation`. [CounterProvider] does
/// _not_ depend on Provider.
class CounterProvider with ChangeNotifier {
  int _value = 0;

  int get value => _value;

  void increment() {
    _value += 1;
    notifyListeners();
  }
}
