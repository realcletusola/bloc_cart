import 'package:flutter/cupertino.dart';

import '../models/home_product.dart';

@immutable
abstract class HomeState {}
abstract class HomeActionState extends HomeState{}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState{}

class HomeLoadedSuccessState extends HomeState{
  final List<ProductDataModel> products;
  HomeLoadedSuccessState({
    required this.products,
  });
}

class HomeErrorState extends HomeState{}

class HomeNavigateToWishlistActionState extends HomeActionState{}

class HomeNavigateToCartActionState extends HomeActionState{}

class HomeProductItemWishlistActionState extends HomeActionState{}

class HomeProductItemCartActionState extends HomeActionState{}
