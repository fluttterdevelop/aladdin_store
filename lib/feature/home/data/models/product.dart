import 'package:aladdin_store/feature/home/domain/entity/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@Freezed()
class ProductModel  with _$ProductModel {

const factory ProductModel({

  @Default(0) int id,
  @Default(0) double price,
  @Default('') String title,
  @Default('') String category,
  @Default('') String image,
  @Default('') String description,
  @JsonKey(name:'rating') ProductRatingModel? productRatingModel

}) = _ProductModel;

  // @JsonKey(defaultValue: 0)
  // final int id;
  // @JsonKey(defaultValue: '')
  // final String title;
  // @JsonKey(defaultValue: '')
  // final String category;
  // @JsonKey(defaultValue: '')
  // final String image;
  // @JsonKey(defaultValue: 0)
  // final double price;
  // @JsonKey(defaultValue: '')
  // final String description;

  // @JsonKey(name: 'rating')
  // final ProductRatingModel? productRatingModel;

  factory ProductModel.fromJson(Map<String, dynamic> data) =>
      _$ProductModelFromJson(data);

  // ProductModel(
  //     {required this.id,
  //     required this.title,
  //     required this.category,
  //     required this.image,
  //     required this.price,
  //     required this.description,
  //     required this.productRatingModel})
  //     : super(null, id: id, title: title, category: category, image: image, price: price);

  // Map<String, dynamic> toJson() => _$ProductModelToJson(this);
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

  // Map<String, dynamic> toJson() => _$ProductRatingModelToJson(this);
}
