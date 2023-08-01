import 'package:mobx/mobx.dart';
import 'package:mobx_imc/observables/modelo_observado/model/product_store.dart';

import '../../model/product_model.dart';
part 'modelo_observado_controller.g.dart';

class ModeloObservadoController = ModeloObservadoControllerBase
    with _$ModeloObservadoController;

abstract class ModeloObservadoControllerBase with Store {
  @observable
  var products = <ProductStore>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductStore(product: ProductModel(name: 'Computador'), selected: false),
      ProductStore(product: ProductModel(name: 'MacBook M1'), selected: false),
      ProductStore(product: ProductModel(name: 'MacBook M2'), selected: false),
      ProductStore(product: ProductModel(name: 'Celular'), selected: false),
      ProductStore(product: ProductModel(name: 'PS5'), selected: false),
    ];
    products.addAll(productsData);
  }

  @action
  void adicionarProduct() {
    products.add(
      ProductStore(
          product: ProductModel(name: 'MacBook M2 PRO'), selected: false),
    );
  }

  @action
  void removerProduct() {
    products.removeAt(0);
  }

  @action
  void selectedProduct(int index){
    var productSelected = !products[index].selected;
    products[index].selected = productSelected;
  }

}
