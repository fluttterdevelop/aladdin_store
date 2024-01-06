import 'package:aladdin_store/feature/home/data/models/product.dart';
import 'package:aladdin_store/feature/home/domain/entity/product.dart';

extension ProductModelExetention on ProductModel {
  ProductEntity get toEntity {
    return ProductEntity(
      productRatingModel,
      id: id,
      title: title,
      category: category,
      image: image,
      price: price,
      description: description,
    );
  }
}
