// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sdk_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SdkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception, StackTrace? stacktrace)
        runtimeError,
    required TResult Function(Exception exception) generic,
    required TResult Function(String message) genericMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeError value) runtimeError,
    required TResult Function(_Generic value) generic,
    required TResult Function(_GenericMessage value) genericMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SdkFailureCopyWith<$Res> {
  factory $SdkFailureCopyWith(
          SdkFailure value, $Res Function(SdkFailure) then) =
      _$SdkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SdkFailureCopyWithImpl<$Res> implements $SdkFailureCopyWith<$Res> {
  _$SdkFailureCopyWithImpl(this._value, this._then);

  final SdkFailure _value;
  // ignore: unused_field
  final $Res Function(SdkFailure) _then;
}

/// @nodoc
abstract class _$RuntimeErrorCopyWith<$Res> {
  factory _$RuntimeErrorCopyWith(
          _RuntimeError value, $Res Function(_RuntimeError) then) =
      __$RuntimeErrorCopyWithImpl<$Res>;
  $Res call({Exception exception, StackTrace? stacktrace});
}

/// @nodoc
class __$RuntimeErrorCopyWithImpl<$Res> extends _$SdkFailureCopyWithImpl<$Res>
    implements _$RuntimeErrorCopyWith<$Res> {
  __$RuntimeErrorCopyWithImpl(
      _RuntimeError _value, $Res Function(_RuntimeError) _then)
      : super(_value, (v) => _then(v as _RuntimeError));

  @override
  _RuntimeError get _value => super._value as _RuntimeError;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stacktrace = freezed,
  }) {
    return _then(_RuntimeError(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      stacktrace: stacktrace == freezed
          ? _value.stacktrace
          : stacktrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_RuntimeError extends _RuntimeError with DiagnosticableTreeMixin {
  const _$_RuntimeError({required this.exception, required this.stacktrace})
      : super._();

  @override
  final Exception exception;
  @override
  final StackTrace? stacktrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SdkFailure.runtimeError(exception: $exception, stacktrace: $stacktrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SdkFailure.runtimeError'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stacktrace', stacktrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RuntimeError &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality()
                .equals(other.stacktrace, stacktrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(stacktrace));

  @JsonKey(ignore: true)
  @override
  _$RuntimeErrorCopyWith<_RuntimeError> get copyWith =>
      __$RuntimeErrorCopyWithImpl<_RuntimeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception, StackTrace? stacktrace)
        runtimeError,
    required TResult Function(Exception exception) generic,
    required TResult Function(String message) genericMessage,
  }) {
    return runtimeError(exception, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
  }) {
    return runtimeError?.call(exception, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
    required TResult orElse(),
  }) {
    if (runtimeError != null) {
      return runtimeError(exception, stacktrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeError value) runtimeError,
    required TResult Function(_Generic value) generic,
    required TResult Function(_GenericMessage value) genericMessage,
  }) {
    return runtimeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
  }) {
    return runtimeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
    required TResult orElse(),
  }) {
    if (runtimeError != null) {
      return runtimeError(this);
    }
    return orElse();
  }
}

abstract class _RuntimeError extends SdkFailure {
  const factory _RuntimeError(
      {required final Exception exception,
      required final StackTrace? stacktrace}) = _$_RuntimeError;
  const _RuntimeError._() : super._();

  Exception get exception => throw _privateConstructorUsedError;
  StackTrace? get stacktrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RuntimeErrorCopyWith<_RuntimeError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenericCopyWith<$Res> {
  factory _$GenericCopyWith(_Generic value, $Res Function(_Generic) then) =
      __$GenericCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class __$GenericCopyWithImpl<$Res> extends _$SdkFailureCopyWithImpl<$Res>
    implements _$GenericCopyWith<$Res> {
  __$GenericCopyWithImpl(_Generic _value, $Res Function(_Generic) _then)
      : super(_value, (v) => _then(v as _Generic));

  @override
  _Generic get _value => super._value as _Generic;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Generic(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Generic extends _Generic with DiagnosticableTreeMixin {
  const _$_Generic(this.exception) : super._();

  @override
  final Exception exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SdkFailure.generic(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SdkFailure.generic'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Generic &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$GenericCopyWith<_Generic> get copyWith =>
      __$GenericCopyWithImpl<_Generic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception, StackTrace? stacktrace)
        runtimeError,
    required TResult Function(Exception exception) generic,
    required TResult Function(String message) genericMessage,
  }) {
    return generic(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
  }) {
    return generic?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeError value) runtimeError,
    required TResult Function(_Generic value) generic,
    required TResult Function(_GenericMessage value) genericMessage,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }
}

abstract class _Generic extends SdkFailure {
  const factory _Generic(final Exception exception) = _$_Generic;
  const _Generic._() : super._();

  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenericCopyWith<_Generic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenericMessageCopyWith<$Res> {
  factory _$GenericMessageCopyWith(
          _GenericMessage value, $Res Function(_GenericMessage) then) =
      __$GenericMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$GenericMessageCopyWithImpl<$Res> extends _$SdkFailureCopyWithImpl<$Res>
    implements _$GenericMessageCopyWith<$Res> {
  __$GenericMessageCopyWithImpl(
      _GenericMessage _value, $Res Function(_GenericMessage) _then)
      : super(_value, (v) => _then(v as _GenericMessage));

  @override
  _GenericMessage get _value => super._value as _GenericMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_GenericMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GenericMessage extends _GenericMessage with DiagnosticableTreeMixin {
  const _$_GenericMessage(this.message) : super._();

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SdkFailure.genericMessage(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SdkFailure.genericMessage'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenericMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$GenericMessageCopyWith<_GenericMessage> get copyWith =>
      __$GenericMessageCopyWithImpl<_GenericMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception, StackTrace? stacktrace)
        runtimeError,
    required TResult Function(Exception exception) generic,
    required TResult Function(String message) genericMessage,
  }) {
    return genericMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
  }) {
    return genericMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
    required TResult orElse(),
  }) {
    if (genericMessage != null) {
      return genericMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeError value) runtimeError,
    required TResult Function(_Generic value) generic,
    required TResult Function(_GenericMessage value) genericMessage,
  }) {
    return genericMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
  }) {
    return genericMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
    required TResult orElse(),
  }) {
    if (genericMessage != null) {
      return genericMessage(this);
    }
    return orElse();
  }
}

abstract class _GenericMessage extends SdkFailure {
  const factory _GenericMessage(final String message) = _$_GenericMessage;
  const _GenericMessage._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenericMessageCopyWith<_GenericMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
