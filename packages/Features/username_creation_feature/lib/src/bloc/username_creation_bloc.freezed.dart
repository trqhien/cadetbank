// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'username_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsernameCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function() usernameCreationFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function()? usernameCreationFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function()? usernameCreationFormSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameCreationFormSubmitted value)
        usernameCreationFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameCreationFormSubmitted value)?
        usernameCreationFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameCreationFormSubmitted value)?
        usernameCreationFormSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameCreationEventCopyWith<$Res> {
  factory $UsernameCreationEventCopyWith(UsernameCreationEvent value,
          $Res Function(UsernameCreationEvent) then) =
      _$UsernameCreationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameCreationEventCopyWithImpl<$Res>
    implements $UsernameCreationEventCopyWith<$Res> {
  _$UsernameCreationEventCopyWithImpl(this._value, this._then);

  final UsernameCreationEvent _value;
  // ignore: unused_field
  final $Res Function(UsernameCreationEvent) _then;
}

/// @nodoc
abstract class _$$_UsernameChangedCopyWith<$Res> {
  factory _$$_UsernameChangedCopyWith(
          _$_UsernameChanged value, $Res Function(_$_UsernameChanged) then) =
      __$$_UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$_UsernameChangedCopyWithImpl<$Res>
    extends _$UsernameCreationEventCopyWithImpl<$Res>
    implements _$$_UsernameChangedCopyWith<$Res> {
  __$$_UsernameChangedCopyWithImpl(
      _$_UsernameChanged _value, $Res Function(_$_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _$_UsernameChanged));

  @override
  _$_UsernameChanged get _value => super._value as _$_UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'UsernameCreationEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      __$$_UsernameChangedCopyWithImpl<_$_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function() usernameCreationFormSubmitted,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function()? usernameCreationFormSubmitted,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function()? usernameCreationFormSubmitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameCreationFormSubmitted value)
        usernameCreationFormSubmitted,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameCreationFormSubmitted value)?
        usernameCreationFormSubmitted,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameCreationFormSubmitted value)?
        usernameCreationFormSubmitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements UsernameCreationEvent {
  const factory _UsernameChanged(final String username) = _$_UsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UsernameCreationFormSubmittedCopyWith<$Res> {
  factory _$$_UsernameCreationFormSubmittedCopyWith(
          _$_UsernameCreationFormSubmitted value,
          $Res Function(_$_UsernameCreationFormSubmitted) then) =
      __$$_UsernameCreationFormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UsernameCreationFormSubmittedCopyWithImpl<$Res>
    extends _$UsernameCreationEventCopyWithImpl<$Res>
    implements _$$_UsernameCreationFormSubmittedCopyWith<$Res> {
  __$$_UsernameCreationFormSubmittedCopyWithImpl(
      _$_UsernameCreationFormSubmitted _value,
      $Res Function(_$_UsernameCreationFormSubmitted) _then)
      : super(_value, (v) => _then(v as _$_UsernameCreationFormSubmitted));

  @override
  _$_UsernameCreationFormSubmitted get _value =>
      super._value as _$_UsernameCreationFormSubmitted;
}

/// @nodoc

class _$_UsernameCreationFormSubmitted
    implements _UsernameCreationFormSubmitted {
  const _$_UsernameCreationFormSubmitted();

  @override
  String toString() {
    return 'UsernameCreationEvent.usernameCreationFormSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameCreationFormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function() usernameCreationFormSubmitted,
  }) {
    return usernameCreationFormSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function()? usernameCreationFormSubmitted,
  }) {
    return usernameCreationFormSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function()? usernameCreationFormSubmitted,
    required TResult orElse(),
  }) {
    if (usernameCreationFormSubmitted != null) {
      return usernameCreationFormSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameCreationFormSubmitted value)
        usernameCreationFormSubmitted,
  }) {
    return usernameCreationFormSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameCreationFormSubmitted value)?
        usernameCreationFormSubmitted,
  }) {
    return usernameCreationFormSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameCreationFormSubmitted value)?
        usernameCreationFormSubmitted,
    required TResult orElse(),
  }) {
    if (usernameCreationFormSubmitted != null) {
      return usernameCreationFormSubmitted(this);
    }
    return orElse();
  }
}

abstract class _UsernameCreationFormSubmitted implements UsernameCreationEvent {
  const factory _UsernameCreationFormSubmitted() =
      _$_UsernameCreationFormSubmitted;
}

/// @nodoc
mixin _$UsernameCreationState {
  String? get username => throw _privateConstructorUsedError;
  UsernameValidatorFailure? get validationError =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  UsernameCreationResult? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsernameCreationStateCopyWith<UsernameCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameCreationStateCopyWith<$Res> {
  factory $UsernameCreationStateCopyWith(UsernameCreationState value,
          $Res Function(UsernameCreationState) then) =
      _$UsernameCreationStateCopyWithImpl<$Res>;
  $Res call(
      {String? username,
      UsernameValidatorFailure? validationError,
      bool isLoading,
      UsernameCreationResult? result});

  $UsernameCreationResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$UsernameCreationStateCopyWithImpl<$Res>
    implements $UsernameCreationStateCopyWith<$Res> {
  _$UsernameCreationStateCopyWithImpl(this._value, this._then);

  final UsernameCreationState _value;
  // ignore: unused_field
  final $Res Function(UsernameCreationState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? validationError = freezed,
    Object? isLoading = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      validationError: validationError == freezed
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as UsernameValidatorFailure?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UsernameCreationResult?,
    ));
  }

  @override
  $UsernameCreationResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $UsernameCreationResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_UsernameCreationStateCopyWith<$Res>
    implements $UsernameCreationStateCopyWith<$Res> {
  factory _$$_UsernameCreationStateCopyWith(_$_UsernameCreationState value,
          $Res Function(_$_UsernameCreationState) then) =
      __$$_UsernameCreationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? username,
      UsernameValidatorFailure? validationError,
      bool isLoading,
      UsernameCreationResult? result});

  @override
  $UsernameCreationResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_UsernameCreationStateCopyWithImpl<$Res>
    extends _$UsernameCreationStateCopyWithImpl<$Res>
    implements _$$_UsernameCreationStateCopyWith<$Res> {
  __$$_UsernameCreationStateCopyWithImpl(_$_UsernameCreationState _value,
      $Res Function(_$_UsernameCreationState) _then)
      : super(_value, (v) => _then(v as _$_UsernameCreationState));

  @override
  _$_UsernameCreationState get _value =>
      super._value as _$_UsernameCreationState;

  @override
  $Res call({
    Object? username = freezed,
    Object? validationError = freezed,
    Object? isLoading = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_UsernameCreationState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      validationError: validationError == freezed
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as UsernameValidatorFailure?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UsernameCreationResult?,
    ));
  }
}

/// @nodoc

class _$_UsernameCreationState implements _UsernameCreationState {
  const _$_UsernameCreationState(
      {this.username,
      this.validationError,
      this.isLoading = false,
      this.result});

  @override
  final String? username;
  @override
  final UsernameValidatorFailure? validationError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final UsernameCreationResult? result;

  @override
  String toString() {
    return 'UsernameCreationState(username: $username, validationError: $validationError, isLoading: $isLoading, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameCreationState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.validationError, validationError) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(validationError),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_UsernameCreationStateCopyWith<_$_UsernameCreationState> get copyWith =>
      __$$_UsernameCreationStateCopyWithImpl<_$_UsernameCreationState>(
          this, _$identity);
}

abstract class _UsernameCreationState implements UsernameCreationState {
  const factory _UsernameCreationState(
      {final String? username,
      final UsernameValidatorFailure? validationError,
      final bool isLoading,
      final UsernameCreationResult? result}) = _$_UsernameCreationState;

  @override
  String? get username;
  @override
  UsernameValidatorFailure? get validationError;
  @override
  bool get isLoading;
  @override
  UsernameCreationResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_UsernameCreationStateCopyWith<_$_UsernameCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsernameCreationResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String updatedUsername) success,
    required TResult Function(String reason) faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String updatedUsername)? success,
    TResult Function(String reason)? faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String updatedUsername)? success,
    TResult Function(String reason)? faillure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failure value) faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameCreationResultCopyWith<$Res> {
  factory $UsernameCreationResultCopyWith(UsernameCreationResult value,
          $Res Function(UsernameCreationResult) then) =
      _$UsernameCreationResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameCreationResultCopyWithImpl<$Res>
    implements $UsernameCreationResultCopyWith<$Res> {
  _$UsernameCreationResultCopyWithImpl(this._value, this._then);

  final UsernameCreationResult _value;
  // ignore: unused_field
  final $Res Function(UsernameCreationResult) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  $Res call({String updatedUsername});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$UsernameCreationResultCopyWithImpl<$Res>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, (v) => _then(v as _$Success));

  @override
  _$Success get _value => super._value as _$Success;

  @override
  $Res call({
    Object? updatedUsername = freezed,
  }) {
    return _then(_$Success(
      updatedUsername == freezed
          ? _value.updatedUsername
          : updatedUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(this.updatedUsername);

  @override
  final String updatedUsername;

  @override
  String toString() {
    return 'UsernameCreationResult.success(updatedUsername: $updatedUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            const DeepCollectionEquality()
                .equals(other.updatedUsername, updatedUsername));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updatedUsername));

  @JsonKey(ignore: true)
  @override
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String updatedUsername) success,
    required TResult Function(String reason) faillure,
  }) {
    return success(updatedUsername);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String updatedUsername)? success,
    TResult Function(String reason)? faillure,
  }) {
    return success?.call(updatedUsername);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String updatedUsername)? success,
    TResult Function(String reason)? faillure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(updatedUsername);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failure value) faillure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements UsernameCreationResult {
  const factory Success(final String updatedUsername) = _$Success;

  String get updatedUsername;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res>
    extends _$UsernameCreationResultCopyWithImpl<$Res>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, (v) => _then(v as _$Failure));

  @override
  _$Failure get _value => super._value as _$Failure;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$Failure(
      reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.reason);

  @override
  final String reason;

  @override
  String toString() {
    return 'UsernameCreationResult.faillure(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  _$$FailureCopyWith<_$Failure> get copyWith =>
      __$$FailureCopyWithImpl<_$Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String updatedUsername) success,
    required TResult Function(String reason) faillure,
  }) {
    return faillure(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String updatedUsername)? success,
    TResult Function(String reason)? faillure,
  }) {
    return faillure?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String updatedUsername)? success,
    TResult Function(String reason)? faillure,
    required TResult orElse(),
  }) {
    if (faillure != null) {
      return faillure(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failure value) faillure,
  }) {
    return faillure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
  }) {
    return faillure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
    required TResult orElse(),
  }) {
    if (faillure != null) {
      return faillure(this);
    }
    return orElse();
  }
}

abstract class Failure implements UsernameCreationResult {
  const factory Failure(final String reason) = _$Failure;

  String get reason;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<_$Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
