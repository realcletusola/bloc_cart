import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeState {}
abstract class HomeActionState extends HomeState{}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState{}

class HomeLoadedSuccessState extends HomeState{}

class HomeErrorState extends HomeState{}

class HomeNavigateToWishlistPage extends HomeActionState{}

class HomeNavigateToCartPage extends HomeActionState{}
