import 'package:aladdin_store/feature/home/domain/entity/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class ProductModel extends ProductEntity {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: '')
  final String category;
  @JsonKey(defaultValue: '')
  final String image;
  @JsonKey(defaultValue: 0)
  final double price;

  @JsonKey(name: 'rating')
  final ProductRatingModel? productRatingModel;

  factory ProductModel.fromJson(Map<String, dynamic> data) =>
      _$ProductModelFromJson(data);

  ProductModel(
      {required this.id,
      required this.title,
      required this.category,
      required this.image,
      required this.price,
      required this.productRatingModel})
      : super(null, id: id, title: title, category: category, image: image, price: price,
      );

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class ProductRatingModel {
  @JsonKey(defaultValue: 0)
  final int count;
  @JsonKey(defaultValue: 0)
  final double rate;

  ProductRatingModel({required this.count, required this.rate});

  factory ProductRatingModel.fromJson(Map<String, dynamic> data) =>
      _$ProductRatingModelFromJson(data);

  Map<String, dynamic> toJson() => _$ProductRatingModelToJson(this);
}
