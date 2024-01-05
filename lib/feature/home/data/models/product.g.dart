// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      description: json['description'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      category: json['category'] as String? ?? '',
      image: json['image'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      productRatingModel: json['rating'] == null
          ? null
          : ProductRatingModel.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'image': instance.image,
      'price': instance.price,
      'rating': instance.productRatingModel,
    };

ProductRatingModel _$ProductRatingModelFromJson(Map<String, dynamic> json) =>
    ProductRatingModel(
      count: json['count'] as int? ?? 0,
      rate: (json['rate'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ProductRatingModelToJson(ProductRatingModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rate': instance.rate,
    };
