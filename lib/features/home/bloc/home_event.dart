import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeEvent {}

class HomeProductWishlistButtonEvent extends HomeEvent{

}

class HomeProductCartButtonEvent extends HomeEvent{

}

class HomeProductWishlistNavigateEvent extends HomeEvent{

}

class HomeProductCartNavigateEvent extends HomeEvent{

}