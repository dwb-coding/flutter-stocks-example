// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'stock_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StockEventTearOff {
  const _$StockEventTearOff();

  GetStocks getStocks() {
    return const GetStocks();
  }
}

// ignore: unused_element
const $StockEvent = _$StockEventTearOff();

mixin _$StockEvent {}

abstract class $StockEventCopyWith<$Res> {
  factory $StockEventCopyWith(
          StockEvent value, $Res Function(StockEvent) then) =
      _$StockEventCopyWithImpl<$Res>;
}

class _$StockEventCopyWithImpl<$Res> implements $StockEventCopyWith<$Res> {
  _$StockEventCopyWithImpl(this._value, this._then);

  final StockEvent _value;
  // ignore: unused_field
  final $Res Function(StockEvent) _then;
}

abstract class $GetStocksCopyWith<$Res> {
  factory $GetStocksCopyWith(GetStocks value, $Res Function(GetStocks) then) =
      _$GetStocksCopyWithImpl<$Res>;
}

class _$GetStocksCopyWithImpl<$Res> extends _$StockEventCopyWithImpl<$Res>
    implements $GetStocksCopyWith<$Res> {
  _$GetStocksCopyWithImpl(GetStocks _value, $Res Function(GetStocks) _then)
      : super(_value, (v) => _then(v as GetStocks));

  @override
  GetStocks get _value => super._value as GetStocks;
}

class _$GetStocks with DiagnosticableTreeMixin implements GetStocks {
  const _$GetStocks();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StockEvent.getStocks()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StockEvent.getStocks'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetStocks);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class GetStocks implements StockEvent {
  const factory GetStocks() = _$GetStocks;
}
