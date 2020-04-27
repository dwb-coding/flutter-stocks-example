import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'stock_event.freezed.dart';

@freezed
abstract class StockEvent with _$StockEvent {
  const factory StockEvent.getStocks() = GetStocks;
}
