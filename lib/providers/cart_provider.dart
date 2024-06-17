import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
//inital value
  @override
  Set<Product> build() {
    return const {};
  }

// metods to update state
  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((element) => element.id != product.id).toSet();
    }
  }
}

@riverpod
int cartTotal(ref){
  final cartProducts = ref.watch(cartNotifierProvider);

  int total = 0;

  for(Product product in cartProducts){
    total+= product.price;
  }

  return total;
}