import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'home_event.dart';
import 'home_state.dart';


// home bloc class
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  // initiating bloc events
  HomeBloc(): super(HomeInitial()) {

    on<HomeProductWishlistButtonEvent>(
      homeProductWishlistButtonMethod);

    on<HomeProductCartButtonEvent>(
      homeProductCartButtonMethod);

    on<HomeProductWishlistNavigateEvent>(
        homeProductWishlistNavigateMethod);

    on<HomeProductCartNavigateEvent>(
        homeProductCartNavigateMethod);
  }

  // homeProductWishlistButtonMethod method
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