import 'package:aladdin_store/feature/home/data/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@Freezed()
class ProductEntity with _$ProductEntity {
  const factory ProductEntity(ProductRatingModel? productRatingModel, {
    required int id,
    required double price,
    required String title,
    required String category,
    required String image,
    required String description,
  }) = _ProductEntity;
}
