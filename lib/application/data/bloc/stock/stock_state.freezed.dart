// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'stock_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StockStateTearOff {
  const _$StockStateTearOff();

  StockListEmpty stockListEmpty() {
    return const StockListEmpty();
  }

  Loading loading() {
    return const Loading();
  }

  Ready ready(List<IexStock> stocks) {
    return Ready(
      stocks,
    );
  }
}

// ignore: unused_element
const $StockState = _$StockStateTearOff();

mixin _$StockState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stockListEmpty(),
    @required Result loading(),
    @required Result ready(List<IexStock> stocks),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stockListEmpty(),
    Result loading(),
    Result ready(List<IexStock> stocks),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stockListEmpty(StockListEmpty value),
    @required Result loading(Loading value),
    @required Result ready(Ready value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stockListEmpty(StockListEmpty value),
    Result loading(Loading value),
    Result ready(Ready value),
    @required Result orElse(),
  });
}

abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
          StockState value, $Res Function(StockState) then) =
      _$StockStateCopyWithImpl<$Res>;
}

class _$StockStateCopyWithImpl<$Res> implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

  final StockState _value;
  // ignore: unused_field
  final $Res Function(StockState) _then;
}

abstract class $StockListEmptyCopyWith<$Res> {
  factory $StockListEmptyCopyWith(
          StockListEmpty value, $Res Function(StockListEmpty) then) =
      _$StockListEmptyCopyWithImpl<$Res>;
}

class _$StockListEmptyCopyWithImpl<$Res> extends _$StockStateCopyWithImpl<$Res>
    implements $StockListEmptyCopyWith<$Res> {
  _$StockListEmptyCopyWithImpl(
      StockListEmpty _value, $Res Function(StockListEmpty) _then)
      : super(_value, (v) => _then(v as StockListEmpty));

  @override
  StockListEmpty get _value => super._value as StockListEmpty;
}

class _$StockListEmpty with DiagnosticableTreeMixin implements StockListEmpty {
  const _$StockListEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StockState.stockListEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StockState.stockListEmpty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StockListEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stockListEmpty(),
    @required Result loading(),
    @required Result ready(List<IexStock> stocks),
  }) {
    assert(stockListEmpty != null);
    assert(loading != null);
    assert(ready != null);
    return stockListEmpty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stockListEmpty(),
    Result loading(),
    Result ready(List<IexStock> stocks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stockListEmpty != null) {
      return stockListEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stockListEmpty(StockListEmpty value),
    @required Result loading(Loading value),
    @required Result ready(Ready value),
  }) {
    assert(stockListEmpty != null);
    assert(loading != null);
    assert(ready != null);
    return stockListEmpty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stockListEmpty(StockListEmpty value),
    Result loading(Loading value),
    Result ready(Ready value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stockListEmpty != null) {
      return stockListEmpty(this);
    }
    return orElse();
  }
}

abstract class StockListEmpty implements StockState {
  const factory StockListEmpty() = _$StockListEmpty;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$StockStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StockState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StockState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stockListEmpty(),
    @required Result loading(),
    @required Result ready(List<IexStock> stocks),
  }) {
    assert(stockListEmpty != null);
    assert(loading != null);
    assert(ready != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stockListEmpty(),
    Result loading(),
    Result ready(List<IexStock> stocks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stockListEmpty(StockListEmpty value),
    @required Result loading(Loading value),
    @required Result ready(Ready value),
  }) {
    assert(stockListEmpty != null);
    assert(loading != null);
    assert(ready != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stockListEmpty(StockListEmpty value),
    Result loading(Loading value),
    Result ready(Ready value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements StockState {
  const factory Loading() = _$Loading;
}

abstract class $ReadyCopyWith<$Res> {
  factory $ReadyCopyWith(Ready value, $Res Function(Ready) then) =
      _$ReadyCopyWithImpl<$Res>;
  $Res call({List<IexStock> stocks});
}

class _$ReadyCopyWithImpl<$Res> extends _$StockStateCopyWithImpl<$Res>
    implements $ReadyCopyWith<$Res> {
  _$ReadyCopyWithImpl(Ready _value, $Res Function(Ready) _then)
      : super(_value, (v) => _then(v as Ready));

  @override
  Ready get _value => super._value as Ready;

  @override
  $Res call({
    Object stocks = freezed,
  }) {
    return _then(Ready(
      stocks == freezed ? _value.stocks : stocks as List<IexStock>,
    ));
  }
}

class _$Ready with DiagnosticableTreeMixin implements Ready {
  const _$Ready(this.stocks) : assert(stocks != null);

  @override
  final List<IexStock> stocks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StockState.ready(stocks: $stocks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StockState.ready'))
      ..add(DiagnosticsProperty('stocks', stocks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Ready &&
            (identical(other.stocks, stocks) ||
                const DeepCollectionEquality().equals(other.stocks, stocks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stocks);

  @override
  $ReadyCopyWith<Ready> get copyWith =>
      _$ReadyCopyWithImpl<Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result stockListEmpty(),
    @required Result loading(),
    @required Result ready(List<IexStock> stocks),
  }) {
    assert(stockListEmpty != null);
    assert(loading != null);
    assert(ready != null);
    return ready(stocks);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result stockListEmpty(),
    Result loading(),
    Result ready(List<IexStock> stocks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(stocks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result stockListEmpty(StockListEmpty value),
    @required Result loading(Loading value),
    @required Result ready(Ready value),
  }) {
    assert(stockListEmpty != null);
    assert(loading != null);
    assert(ready != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result stockListEmpty(StockListEmpty value),
    Result loading(Loading value),
    Result ready(Ready value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements StockState {
  const factory Ready(List<IexStock> stocks) = _$Ready;

  List<IexStock> get stocks;
  $ReadyCopyWith<Ready> get copyWith;
}
