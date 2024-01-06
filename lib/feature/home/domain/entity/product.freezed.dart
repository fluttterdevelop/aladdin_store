// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEntity {
  ProductRatingModel? get productRatingModel =>
      throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call(
      {ProductRatingModel? productRatingModel,
      int id,
      double price,
      String title,
      String category,
      String image,
      String description});
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productRatingModel = freezed,
    Object? id = null,
    Object? price = null,
    Object? title = null,
    Object? category = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      productRatingModel: freezed == productRatingModel
          ? _value.productRatingModel
          : productRatingModel // ignore: cast_nullable_to_non_nullable
              as ProductRatingModel?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductEntityImplCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$ProductEntityImplCopyWith(
          _$ProductEntityImpl value, $Res Function(_$ProductEntityImpl) then) =
      __$$ProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductRatingModel? productRatingModel,
      int id,
      double price,
      String title,
      String category,
      String image,
      String description});
}

/// @nodoc
class __$$ProductEntityImplCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$ProductEntityImpl>
    implements _$$ProductEntityImplCopyWith<$Res> {
  __$$ProductEntityImplCopyWithImpl(
      _$ProductEntityImpl _value, $Res Function(_$ProductEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productRatingModel = freezed,
    Object? id = null,
    Object? price = null,
    Object? title = null,
    Object? category = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$ProductEntityImpl(
      freezed == productRatingModel
          ? _value.productRatingModel
          : productRatingModel // ignore: cast_nullable_to_non_nullable
              as ProductRatingModel?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductEntityImpl implements _ProductEntity {
  const _$ProductEntityImpl(this.productRatingModel,
      {required this.id,
      required this.price,
      required this.title,
      required this.category,
      required this.image,
      required this.description});

  @override
  final ProductRatingModel? productRatingModel;
  @override
  final int id;
  @override
  final double price;
  @override
  final String title;
  @override
  final String category;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'ProductEntity(productRatingModel: $productRatingModel, id: $id, price: $price, title: $title, category: $category, image: $image, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntityImpl &&
            (identical(other.productRatingModel, productRatingModel) ||
                other.productRatingModel == productRatingModel) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productRatingModel, id, price,
      title, category, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      __$$ProductEntityImplCopyWithImpl<_$ProductEntityImpl>(this, _$identity);
}

abstract class _ProductEntity implements ProductEntity {
  const factory _ProductEntity(final ProductRatingModel? productRatingModel,
      {required final int id,
      required final double price,
      required final String title,
      required final String category,
      required final String image,
      required final String description}) = _$ProductEntityImpl;

  @override
  ProductRatingModel? get productRatingModel;
  @override
  int get id;
  @override
  double get price;
  @override
  String get title;
  @override
  String get category;
  @override
  String get image;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
