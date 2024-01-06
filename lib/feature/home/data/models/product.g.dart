// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as int? ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      title: json['title'] as String? ?? '',
      category: json['category'] as String? ?? '',
      image: json['image'] as String? ?? '',
      description: json['description'] as String? ?? '',
      productRatingModel: json['rating'] == null
          ? null
          : ProductRatingModel.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'title': instance.title,
      'category': instance.category,
      'image': instance.image,
      'description': instance.description,
      'rating': instance.productRatingModel,
    };
