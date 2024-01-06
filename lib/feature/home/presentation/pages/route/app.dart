import 'package:aladdin_store/feature/home/domain/entity/product.dart';
import 'package:aladdin_store/feature/home/presentation/home_page.dart';
import 'package:aladdin_store/feature/home/presentation/pages/single_product.dart';
import 'package:aladdin_store/feature/home/presentation/pages/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppRoute {
  static Route<dynamic> router(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return CupertinoPageRoute(builder: (_) => const SplashScreen());
      case "/product":
        return CupertinoPageRoute(
          builder: (_) => const App(
),
        );
      // case '/product_single':
      //  final arguments = settings.arguments;
      //   final product = arguments as ProductEntity;
      //   return CupertinoPageRoute(builder: (_) =>  SingleProductPage(product: product,));
      default:
        return CupertinoPageRoute(builder: (_) => const Scaffold());
    }
  }
}
