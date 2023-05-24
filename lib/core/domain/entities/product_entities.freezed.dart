// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListProductEntities {
  List<ProductEntities>? get products => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListProductEntitiesCopyWith<ListProductEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListProductEntitiesCopyWith<$Res> {
  factory $ListProductEntitiesCopyWith(
          ListProductEntities value, $Res Function(ListProductEntities) then) =
      _$ListProductEntitiesCopyWithImpl<$Res, ListProductEntities>;
  @useResult
  $Res call(
      {List<ProductEntities>? products, int? total, int? skip, int? limit});
}

/// @nodoc
class _$ListProductEntitiesCopyWithImpl<$Res, $Val extends ListProductEntities>
    implements $ListProductEntitiesCopyWith<$Res> {
  _$ListProductEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntities>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListProductEntitiesCopyWith<$Res>
    implements $ListProductEntitiesCopyWith<$Res> {
  factory _$$_ListProductEntitiesCopyWith(_$_ListProductEntities value,
          $Res Function(_$_ListProductEntities) then) =
      __$$_ListProductEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductEntities>? products, int? total, int? skip, int? limit});
}

/// @nodoc
class __$$_ListProductEntitiesCopyWithImpl<$Res>
    extends _$ListProductEntitiesCopyWithImpl<$Res, _$_ListProductEntities>
    implements _$$_ListProductEntitiesCopyWith<$Res> {
  __$$_ListProductEntitiesCopyWithImpl(_$_ListProductEntities _value,
      $Res Function(_$_ListProductEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_ListProductEntities(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntities>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ListProductEntities implements _ListProductEntities {
  const _$_ListProductEntities(
      {final List<ProductEntities>? products,
      this.total,
      this.skip,
      this.limit})
      : _products = products;

  final List<ProductEntities>? _products;
  @override
  List<ProductEntities>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  @override
  final int? skip;
  @override
  final int? limit;

  @override
  String toString() {
    return 'ListProductEntities(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListProductEntities &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListProductEntitiesCopyWith<_$_ListProductEntities> get copyWith =>
      __$$_ListProductEntitiesCopyWithImpl<_$_ListProductEntities>(
          this, _$identity);
}

abstract class _ListProductEntities implements ListProductEntities {
  const factory _ListProductEntities(
      {final List<ProductEntities>? products,
      final int? total,
      final int? skip,
      final int? limit}) = _$_ListProductEntities;

  @override
  List<ProductEntities>? get products;
  @override
  int? get total;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$_ListProductEntitiesCopyWith<_$_ListProductEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductEntities {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  double? get discountPercentage => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductEntitiesCopyWith<ProductEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntitiesCopyWith<$Res> {
  factory $ProductEntitiesCopyWith(
          ProductEntities value, $Res Function(ProductEntities) then) =
      _$ProductEntitiesCopyWithImpl<$Res, ProductEntities>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? price,
      double? discountPercentage,
      double? rating,
      int? stock,
      String? brand,
      String? category,
      String? thumbnail,
      List<String>? images});
}

/// @nodoc
class _$ProductEntitiesCopyWithImpl<$Res, $Val extends ProductEntities>
    implements $ProductEntitiesCopyWith<$Res> {
  _$ProductEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? discountPercentage = freezed,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductEntitiesCopyWith<$Res>
    implements $ProductEntitiesCopyWith<$Res> {
  factory _$$_ProductEntitiesCopyWith(
          _$_ProductEntities value, $Res Function(_$_ProductEntities) then) =
      __$$_ProductEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? price,
      double? discountPercentage,
      double? rating,
      int? stock,
      String? brand,
      String? category,
      String? thumbnail,
      List<String>? images});
}

/// @nodoc
class __$$_ProductEntitiesCopyWithImpl<$Res>
    extends _$ProductEntitiesCopyWithImpl<$Res, _$_ProductEntities>
    implements _$$_ProductEntitiesCopyWith<$Res> {
  __$$_ProductEntitiesCopyWithImpl(
      _$_ProductEntities _value, $Res Function(_$_ProductEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? discountPercentage = freezed,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_ProductEntities(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_ProductEntities implements _ProductEntities {
  const _$_ProductEntities(
      {required this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      final List<String>? images})
      : _images = images;

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? price;
  @override
  final double? discountPercentage;
  @override
  final double? rating;
  @override
  final int? stock;
  @override
  final String? brand;
  @override
  final String? category;
  @override
  final String? thumbnail;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductEntities(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, category: $category, thumbnail: $thumbnail, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      discountPercentage,
      rating,
      stock,
      brand,
      category,
      thumbnail,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductEntitiesCopyWith<_$_ProductEntities> get copyWith =>
      __$$_ProductEntitiesCopyWithImpl<_$_ProductEntities>(this, _$identity);
}

abstract class _ProductEntities implements ProductEntities {
  const factory _ProductEntities(
      {required final int id,
      final String? title,
      final String? description,
      final int? price,
      final double? discountPercentage,
      final double? rating,
      final int? stock,
      final String? brand,
      final String? category,
      final String? thumbnail,
      final List<String>? images}) = _$_ProductEntities;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get price;
  @override
  double? get discountPercentage;
  @override
  double? get rating;
  @override
  int? get stock;
  @override
  String? get brand;
  @override
  String? get category;
  @override
  String? get thumbnail;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_ProductEntitiesCopyWith<_$_ProductEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
