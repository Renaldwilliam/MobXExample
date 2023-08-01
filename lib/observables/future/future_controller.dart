import 'package:mobx/mobx.dart';
part 'future_controller.g.dart';

class FutureController = FutureControllerBase with _$FutureController;

abstract class FutureControllerBase with Store {
  @observable
  var nomefuture = Future.value('').asObservable();
  @action
  Future<void> buscarNome() async {
    nomefuture = Future.delayed(
        const Duration(seconds: 2), () => 'Renald William').asObservable();
    // return 'Renald William';
  }
}
