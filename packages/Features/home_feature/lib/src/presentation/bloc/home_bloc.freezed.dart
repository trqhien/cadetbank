// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  List<String> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> products) loadedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> products)? loadedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> products)? loadedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedProducts value) loadedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedProducts value)? loadedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedProducts value)? loadedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({List<String> products});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$LoadedProductsCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$LoadedProductsCopyWith(
          _$LoadedProducts value, $Res Function(_$LoadedProducts) then) =
      __$$LoadedProductsCopyWithImpl<$Res>;
  @override
  $Res call({List<String> products});
}

/// @nodoc
class __$$LoadedProductsCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$LoadedProductsCopyWith<$Res> {
  __$$LoadedProductsCopyWithImpl(
      _$LoadedProducts _value, $Res Function(_$LoadedProducts) _then)
      : super(_value, (v) => _then(v as _$LoadedProducts));

  @override
  _$LoadedProducts get _value => super._value as _$LoadedProducts;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$LoadedProducts(
      products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LoadedProducts implements LoadedProducts {
  const _$LoadedProducts(final List<String> products) : _products = products;

  final List<String> _products;
  @override
  List<String> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'HomeEvent.loadedProducts(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedProducts &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$LoadedProductsCopyWith<_$LoadedProducts> get copyWith =>
      __$$LoadedProductsCopyWithImpl<_$LoadedProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> products) loadedProducts,
  }) {
    return loadedProducts(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> products)? loadedProducts,
  }) {
    return loadedProducts?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> products)? loadedProducts,
    required TResult orElse(),
  }) {
    if (loadedProducts != null) {
      return loadedProducts(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedProducts value) loadedProducts,
  }) {
    return loadedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedProducts value)? loadedProducts,
  }) {
    return loadedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedProducts value)? loadedProducts,
    required TResult orElse(),
  }) {
    if (loadedProducts != null) {
      return loadedProducts(this);
    }
    return orElse();
  }
}

abstract class LoadedProducts implements HomeEvent {
  const factory LoadedProducts(final List<String> products) = _$LoadedProducts;

  @override
  List<String> get products;
  @override
  @JsonKey(ignore: true)
  _$$LoadedProductsCopyWith<_$LoadedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<String> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({List<String> products});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> products});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$_HomeState(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({final List<String> products = const []})
      : _products = products;

  final List<String> _products;
  @override
  @JsonKey()
  List<String> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'HomeState(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({final List<String> products}) = _$_HomeState;

  @override
  List<String> get products;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
