// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_cart/features/home/bloc/home_bloc.dart';
// import 'package:flutter_cart/features/home/bloc/home_state.dart';
//
// class Home extends StatefulWidget{
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home>{
//   final HomeBloc homeBloc = HomeBloc();
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<HomeBloc, HomeState>(
//       bloc: homeBloc,
//       // listenWhen: (previous, current) {},
//       // buildWhen: (previous, current){},
//       listener: (context, state) {
//
//       },
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text("Bishop's Grocery App"),
//             actions: [
//               IconButton(onPressed: (){}, icon: const Icon(Icons.favorite)),
//               IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
//             ],
//           ),
//         );
//       },
//     );
//   }
// }