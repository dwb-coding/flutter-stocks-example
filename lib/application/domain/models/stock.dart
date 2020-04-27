import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'stock.freezed.dart';

@freezed
abstract class StockData with _$StockData {
  const factory StockData(
      String symbol,
      String companyName,
      { String primaryExchange,
        String calculationPrice,
        double open,
        DateTime openTime,
        String openSource,
        double high,
        DateTime highTime,
        String highSource,
        double low,
        DateTime lowTime,
        String lowSource,
        double latestPrice,
        String latestSource,
        String latestTime,
        DateTime latestUpdate,
        int latestVolume,
      }) = _StockData;
}