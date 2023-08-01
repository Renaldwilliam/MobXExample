import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';
part 'observable_list_controller.g.dart';

class ObservableListController = ObservableListControllerBase
    with _$ObservableListController;

abstract class ObservableListControllerBase with Store {
  @observable
  var products = <ProductModel>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductModel(name: 'Computador'),
      ProductModel(name: 'MacBook M1'),
      ProductModel(name: 'MacBook M2'),
      ProductModel(name: 'Celular'),
      ProductModel(name: 'Nitro5'),
    ];
    products.addAll(productsData);
  }

  @action
  void adicionarProduct() {
    products.add(ProductModel(name: 'MacBook M2 Pro'));
  }

  @action
  void removerProduct() {
    products.removeAt(0);
  }
}
