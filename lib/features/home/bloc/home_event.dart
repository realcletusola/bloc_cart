import 'package:flutter/cupertino.dart';
import 'package:flutter_cart/features/home/models/home_product.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent{}

class HomeProductWishlistButtonEvent extends HomeEvent{
  final ProductDataModel clickedProduct;
  HomeProductWishlistButtonEvent({
    required this.clickedProduct,
});
}

class HomeProductCartButtonEvent extends HomeEvent{
  final ProductDataModel clickedProduct;
  HomeProductCartButtonEvent({
   required this.clickedProduct,
});
}

class HomeProductWishlistNavigateEvent extends HomeEvent{

}

class HomeProductCartNavigateEvent extends HomeEvent{

}