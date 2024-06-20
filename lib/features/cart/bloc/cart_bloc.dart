import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../../data/cart_item.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }
  // cart initial event method
  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
      emit(CartSuccessState(cartItems: cartItems));
  }
  // method to remove object from cart
  FutureOr<void> cartRemoveFromCartEvent(
      CartRemoveFromCartEvent event, Emitter<CartState> emit) {
      cartItems.remove(event.productDataModel);
      emit(CartSuccessState(cartItems: cartItems));
  }
}