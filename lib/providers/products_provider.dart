import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';

part 'products_provider.g.dart';

const List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Smartphone',
    price: 699,
    image: 'assets/images/smartphone.jpg',
  ),
  Product(
    id: '2',
    title: 'Laptop',
    price: 999,
    image: 'assets/images/laptop.jpg',
  ),
  Product(
    id: '3',
    title: 'Headphones',
    price: 199,
    image: 'assets/images/headphones.jpg',
  ),
  Product(
    id: '4',
    title: 'Smartwatch',
    price: 299,
    image: 'assets/images/smartwatch.jpg',
  ),
  Product(
    id: '5',
    title: 'Camera',
    price: 499,
    image: 'assets/images/camera.jpg',
  ),
  Product(
    id: '6',
    title: 'Tablet',
    price: 399,
    image: 'assets/images/tablet.jpg',
  ),
  Product(
    id: '7',
    title: 'Wireless Speaker',
    price: 149,
    image: 'assets/images/wireless_speaker.jpg',
  ),
  Product(
    id: '8',
    title: 'Gaming Console',
    price: 399,
    image: 'assets/images/gaming_console.jpg',
  ),
  Product(
    id: '9',
    title: 'E-reader',
    price: 129,
    image: 'assets/images/e_reader.jpg',
  ),
  Product(
    id: '10',
    title: 'Fitness Tracker',
    price: 99,
    image: 'assets/images/fitness_tracker.jpg',
  ),
];

@riverpod
List<Product> products(ref){
  return allProducts;
}

@riverpod
List<Product> reducedProducts(ref){
  return allProducts.where((element) => element.price < 350).toList();
}