import 'package:aladdin_store/feature/home/data/models/product.dart';

class ProductEntity {
  final int id;
  final String title;
  final String category;
  final String image;
  final double price;

  // birinchi usuli
  final ProductRatingModel? productRatingModel;

  // ikkinchi usuli
  // final int rate;

  ProductEntity(
    // birinchi usuli
    this.productRatingModel,

    // ikkinchi usuli
    // this.rate,
    {
    required this.id,
    required this.title,
    required this.category,
    required this.image,
    required this.price,
  });
}
