import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cart/features/cart/ui/cart.dart';
import 'package:flutter_cart/features/home/bloc/home_bloc.dart';
import 'package:flutter_cart/features/home/bloc/home_event.dart';
import 'package:flutter_cart/features/home/bloc/home_state.dart';
import 'package:flutter_cart/features/wishlist/ui/wishlist.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{

  @override
  // create init state
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }
  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      // listen if current is HomeActionState
      listenWhen: (previous, current) => current is HomeActionState,
      // build if current is not HomeActionState
      buildWhen: (previous, current) => current is !HomeActionState,
      listener: (context, state) {
        // navigate to cart page if state is HomeNavigateToCartActionState
        if (state is HomeNavigateToCartActionState) {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Cart()));

        }
        // navigate to wishlist page if state is HomeNavigateToWishlistActionState
        else if (state is HomeNavigateToWishlistActionState) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Wishlist()));
        }
      },
      builder: (context, state) {
        // switch between states
        switch (state.runtimeType) {
        // if state is loading state -> return  loading indicator icon
          case HomeLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );

          // if state has loaded successfully -> return products display
          case HomeLoadedSuccessState:
            return Scaffold(
              appBar: AppBar(
                title: const Text("Bishop's Grocery App"),
                backgroundColor: Colors.lightGreenAccent,
                actions: [
                  IconButton(onPressed: (){
                    homeBloc.add(HomeProductWishlistNavigateEvent());
                  }, icon: const Icon(Icons.favorite_border)),
                  IconButton(onPressed: () {
                    homeBloc.add(HomeProductCartNavigateEvent());
                  }, icon: const Icon(Icons.shopping_bag_outlined))
                ],
              ),
            );
          // if unable to load state -> return error message
          case HomeErrorState:
            return const Scaffold(
              body: Center(
                child: Text('An Error Occurred!'),
              ),);
          default:
        }
        return const Text("An Error Occurred");
      },
    );
  }
}