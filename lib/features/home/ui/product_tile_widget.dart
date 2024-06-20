import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_cart/features/home/bloc/home_bloc.dart';
import 'package:flutter_cart/features/home/bloc/home_event.dart';
import 'package:flutter_cart/features/home/models/home_product.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final HomeBloc homeBloc;
  const ProductTileWidget({super.key, required this.productDataModel, required this.homeBloc});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.black)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(productDataModel.imageUrl))
            ),
          ),
          const SizedBox(height: 20),
          Text(productDataModel.name,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              ),),
          Text(productDataModel.description,
          style: const TextStyle(
            fontSize: 15,
          ) ,),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( "\$${productDataModel.price}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  IconButton(onPressed: (){
                    homeBloc.add(HomeProductWishlistButtonEvent(
                      clickedProduct: productDataModel,
                    ));
                  }, icon: const Icon(Icons.favorite_border)),
                  IconButton(onPressed: () {
                    homeBloc.add(HomeProductCartButtonEvent(
                      clickecProduct: productDataModel,
                    ));
                  }, icon: const Icon(Icons.shopping_bag_outlined))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
