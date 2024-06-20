import 'package:flutter/cupertino.dart';

import '../../home/models/home_product.dart';

@immutable
abstract class CartState {}
abstract class CartActionState extends CartState {}

class CartInitial extends CartState {}

class CartSuccessState extends CartState {
  final List<ProductDataModel> cartItems;
  CartSuccessState({
    required this.cartItems,
  });
}