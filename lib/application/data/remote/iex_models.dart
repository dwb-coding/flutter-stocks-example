import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocks/application/data/remote/converter/datetime_epoch_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iex_models.freezed.dart';
part 'iex_models.g.dart';

@freezed
abstract class IexResponse with _$IexResponse {

  @JsonSerializable(explicitToJson: true)
  const factory IexResponse({
    Map<String,IexStock> stocks,
  }) = _IexResponse;

  factory IexResponse.fromJson(Map<String,dynamic> json) =>
      _$IexResponseFromJson(json);
}


@freezed
abstract class IexStock with _$IexStock {

  @JsonSerializable(explicitToJson: true)
  const factory IexStock(
      @JsonKey(name: 'quote') Quote quote, {
        @JsonKey(name: 'chart') List<Chart> chart,
      }) = _IexStock;

  factory IexStock.fromJson(Map<String,dynamic> json) =>
      _$IexStockFromJson(json);
}


@freezed
abstract class Quote with _$Quote {

  @JsonSerializable(explicitToJson: true)
  const factory Quote(
      String symbol,
      String companyName, {
        String primaryExchange,
        String calculationPrice,
        double open,
        @DateTimeEpochConverter() DateTime openTime,
        String openSource,
        double close,
        @DateTimeEpochConverter() DateTime closeTime,
        String closeSource,
        double high,
        @DateTimeEpochConverter() DateTime highTime,
        String highSource,
        double low,
        @DateTimeEpochConverter() DateTime lowTime,
        String lowSource,
        double latestPrice,
        String latestSource,
        String latestTime,
        @DateTimeEpochConverter() DateTime latestUpdate,
        int latestVolume,
        double iexRealtimePrice,
        int iexRealtimeSize,
        @DateTimeEpochConverter() DateTime iexLastUpdated,
        double delayedPrice,
        @DateTimeEpochConverter() DateTime delayedPriceTime,
        double oddLotDelayedPrice,
        @DateTimeEpochConverter() DateTime oddLotDelayedPriceTime,
        double extendedPrice,
        double extendedChange,
        double extendedChangePercent,
        @DateTimeEpochConverter() DateTime extendedPriceTime,
        double previousClose,
        int previousVolume,
        double change,
        double changePercent,
        int volume,
        double iexMarketPercent,
        int iexVolume,
        int avgTotalVolume,
        double iexBidPrice,
        double iexBidSize,
        double iexAskPrice,
        int iexAskSize,
        double iexOpen,
        @DateTimeEpochConverter() DateTime iexOpenTime,
        double iexClose,
        @DateTimeEpochConverter() DateTime iexCloseTime,
        int marketCap,
        double peRatio,
        double week52High,
        double week52Low,
        double ytdChange,
        @DateTimeEpochConverter() DateTime lastTradeTime,
        bool isUSMarketOpen
      }) = _Quote;

  factory Quote.fromJson(Map<String,dynamic> json) =>
      _$QuoteFromJson(json);
}

@freezed
abstract class Chart with _$Chart {

  @JsonSerializable(explicitToJson: true)
  const factory Chart(
      String date,
      double open,
      double close,
      double high,
      double low,
      int volume,
      double uOpen,
      double uClose,
      double uHigh,
      double uLow,
      int uVolume,
      double change,
      double changePercent,
      String label,
      double changeOverTime,
      ) = _Chart;

  factory Chart.fromJson(Map<String,dynamic> json) =>
      _$ChartFromJson(json);
}

// Stock listings from /ref-date/symbols
// [{
// "symbol":"ZYXI",
// "exchange":"NAS",
// "name":"Zynex Inc.",
// "date":"2020-04-16",
// "type":"cs",
// "iexId":"IEX_4E464C4C4A462D52",
// "region":"US",
// "currency":"USD",
// "isEnabled":true,
// "figi":"BBG000BJBXZ2",  <nullable>
// "cik":"1087294"  <nullable>
// }]

@freezed
abstract class Listing with _$Listing {

  const factory Listing(
      String symbol,
      String exchange,
      String name,
      String date,
      String type,
      String iexId,
      String region,
      String currency,
      bool isEnabled,
      { String figi,
        String cik
      }) = _Listing;

  factory Listing.fromJson(Map<String,dynamic> json) =>
      _$ListingFromJson(json);
}