import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:stocks/application/data/remote/iex_models.dart';

part 'stock_state.freezed.dart';

@freezed
abstract class StockState with _$StockState {
  const factory StockState.stockListEmpty() = StockListEmpty;
  const factory StockState.loading() = Loading;
  const factory StockState.ready(List<IexStock> stocks) = Ready;
}
