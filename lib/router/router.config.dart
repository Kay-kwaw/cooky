import 'package:cookify/models/item_model.dart';
import 'package:cookify/navigation/navigation.dart';
import 'package:cookify/products/favorite_page.dart';
import 'package:cookify/products/inventory.dart';
import 'package:cookify/products/product_page.dart';
import 'package:cookify/products/search_screen.dart';
import 'package:cookify/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';


final router = GoRouter(routes: [
  GoRoute(
    path: Routers.navigation.path,
    name: Routers.navigation.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: Navigation());
    },
  ),
  GoRoute(
    path: Routers.homepage.path,
    name: Routers.homepage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: HomePage());
    },
  ),
  GoRoute(
    path: Routers.productpage.path,
    name: Routers.productpage.name,
    pageBuilder: (context, state) {
      return CupertinoPage(child: ProductPage(model: state.extra as ItemModel));
    },
  ),
  GoRoute(
    path: Routers.searchpage.path,
    name: Routers.searchpage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: SearchPage());
    },
  ),
//   GoRoute(
//   path: "${Routers.mappage.path}/:flag/:pad",
//   name: Routers.mappage.name,
//   pageBuilder: (context, state) {
//     final String flagValue = state.pathParameters['flag']!; 
//     return CupertinoPage(
//       child: MapPage(
//         flag: flagValue == 'true',
//         pad: int.parse(state.pathParameters['pad'] ?? '100'),
//       ),
//     );
//   },
// ),
  GoRoute(
    path: Routers.likedproductpage.path,
    name: Routers.likedproductpage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: LikedProductPage());
    },
  ),
]);
