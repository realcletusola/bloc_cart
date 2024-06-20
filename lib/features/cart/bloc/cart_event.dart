import 'package:flutter/cupertino.dart';
import 'package:flutter_cart/features/home/models/home_product.dart';

@immutable
abstract class CartEvent {}

class CartInitialEvent extends CartEvent {

}

class CartRemoveFromCartEvent extends CartEvent {
  final ProductDataModel productDataModel;
  CartRemoveFromCartEvent({
    required this.productDataModel,
  });
}