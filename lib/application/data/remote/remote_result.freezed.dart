// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'remote_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RemoteResultTearOff {
  const _$RemoteResultTearOff();

  Success success(dynamic result) {
    return Success(
      result,
    );
  }

  Error error(Error error) {
    return Error(
      error,
    );
  }
}

// ignore: unused_element
const $RemoteResult = _$RemoteResultTearOff();

mixin _$RemoteResult {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(dynamic result),
    @required Result error(Error error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(dynamic result),
    Result error(Error error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $RemoteResultCopyWith<$Res> {
  factory $RemoteResultCopyWith(
          RemoteResult value, $Res Function(RemoteResult) then) =
      _$RemoteResultCopyWithImpl<$Res>;
}

class _$RemoteResultCopyWithImpl<$Res> implements $RemoteResultCopyWith<$Res> {
  _$RemoteResultCopyWithImpl(this._value, this._then);

  final RemoteResult _value;
  // ignore: unused_field
  final $Res Function(RemoteResult) _then;
}

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({dynamic result});
}

class _$SuccessCopyWithImpl<$Res> extends _$RemoteResultCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(Success(
      result == freezed ? _value.result : result as dynamic,
    ));
  }
}

class _$Success implements Success {
  const _$Success(this.result) : assert(result != null);

  @override
  final dynamic result;

  @override
  String toString() {
    return 'RemoteResult.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(dynamic result),
    @required Result error(Error error),
  }) {
    assert(success != null);
    assert(error != null);
    return success(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(dynamic result),
    Result error(Error error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements RemoteResult {
  const factory Success(dynamic result) = _$Success;

  dynamic get result;
  $SuccessCopyWith<Success> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

class _$ErrorCopyWithImpl<$Res> extends _$RemoteResultCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Error(
      error == freezed ? _value.error : error as Error,
    ));
  }
}

class _$Error implements Error {
  const _$Error(this.error) : assert(error != null);

  @override
  final Error error;

  @override
  String toString() {
    return 'RemoteResult.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(dynamic result),
    @required Result error(Error error),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(dynamic result),
    Result error(Error error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements RemoteResult {
  const factory Error(Error error) = _$Error;

  Error get error;
  $ErrorCopyWith<Error> get copyWith;
}
