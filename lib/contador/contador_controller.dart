import 'package:mobx/mobx.dart';

class ContadorController {
  var _counter = Observable<int>(0);
  late Action increment;

  ContadorController() {
    increment = Action(_incrementCounter);
  }

  void _incrementCounter() {
    _counter.value++;
  }

  int get counter => _counter.value;
}
