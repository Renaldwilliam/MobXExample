import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/full_name_codegen.dart';

part 'contador_codegem_controller.g.dart';

class ContadorCodegemController = _ContadorCodegemControllerBase
    with _$ContadorCodegemController;

abstract class _ContadorCodegemControllerBase with Store {
  @observable
  int counter = 0;

  @observable
  var fullName = FullNameCodegen(first: 'First', last: 'Last');

  @computed
  String get saudacao => 'Olá ${fullName.first} $counter';

  @action
  void increment() {
    counter++;
  }

  @action
  void changeName() {
    fullName = fullName.copyWith(first: 'Renald', last: 'William');
  }

  @action
  void rollbackName() {
    fullName = fullName.copyWith(first: 'first', last: 'last');
  }
}
