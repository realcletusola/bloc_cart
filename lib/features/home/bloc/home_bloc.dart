import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_cart/data/grocery_data.dart';
import 'package:flutter_cart/features/home/models/home_product.dart';
import 'package:meta/meta.dart';

import 'home_event.dart';
import 'home_state.dart';


// home bloc class
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  // initiating bloc events
  HomeBloc(): super(HomeInitial()) {

    on<HomeInitialEvent>(
      homeInitialEventMethod);

    on<HomeProductWishlistButtonEvent>(
      homeProductWishlistButtonMethod);

    on<HomeProductCartButtonEvent>(
      homeProductCartButtonMethod);

    on<HomeProductWishlistNavigateEvent>(
        homeProductWishlistNavigateMethod);

    on<HomeProductCartNavigateEvent>(
        homeProductCartNavigateMethod);
  }

  // homeInitialEventMethod
  FutureOr<void> homeInitialEventMethod(
      HomeInitialEvent event, Emitter<HomeState> emit) async {

      emit(HomeLoadingState());
      await Future.delayed(const Duration(seconds: 3));
      emit(HomeLoadedSuccessState(
          products: GroceryData.groceryProducts
          .map((e) => ProductDataModel(
              id: e['id'],
              name: e['name'],
              description: e['description'],
              price: e['price'],
              imageUrl: e['imageUrl'])).toList()
          ));
  }

  // homeProductWishlistButtonMethod
  FutureOr<void> homeProductWishlistButtonMethod(
      HomeProductWishlistButtonEvent event, Emitter<HomeState> emit){
  }

  // homeProductCartButtonMethod
  FutureOr<void> homeProductCartButtonMethod(
      HomeProductCartButtonEvent event, Emitter<HomeState> emit){
  }

  // homeProductWishlistNavigateMethod
  FutureOr<void> homeProductWishlistNavigateMethod(
      HomeProductWishlistNavigateEvent event, Emitter<HomeState> emit){
      emit(HomeNavigateToWishlistActionState());
  }

  // homeProductCartNavigateMethod
  FutureOr<void> homeProductCartNavigateMethod(
      HomeProductCartNavigateEvent event, Emitter<HomeState> emit){
      emit(HomeNavigateToCartActionState());
  }
}