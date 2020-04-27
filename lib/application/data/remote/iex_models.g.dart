// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iex_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IexResponse _$_$_IexResponseFromJson(Map<String, dynamic> json) {
  return _$_IexResponse(
    stocks: (json['stocks'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : IexStock.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$_$_IexResponseToJson(_$_IexResponse instance) =>
    <String, dynamic>{
      'stocks': instance.stocks?.map((k, e) => MapEntry(k, e?.toJson())),
    };

_$_IexStock _$_$_IexStockFromJson(Map<String, dynamic> json) {
  return _$_IexStock(
    json['quote'] == null
        ? null
        : Quote.fromJson(json['quote'] as Map<String, dynamic>),
    chart: (json['chart'] as List)
        ?.map(
            (e) => e == null ? null : Chart.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_IexStockToJson(_$_IexStock instance) =>
    <String, dynamic>{
      'quote': instance.quote?.toJson(),
      'chart': instance.chart?.map((e) => e?.toJson())?.toList(),
    };

_$_Quote _$_$_QuoteFromJson(Map<String, dynamic> json) {
  return _$_Quote(
    json['symbol'] as String,
    json['companyName'] as String,
    primaryExchange: json['primaryExchange'] as String,
    calculationPrice: json['calculationPrice'] as String,
    open: (json['open'] as num)?.toDouble(),
    openTime: const DateTimeEpochConverter().fromJson(json['openTime'] as int),
    openSource: json['openSource'] as String,
    close: (json['close'] as num)?.toDouble(),
    closeTime:
        const DateTimeEpochConverter().fromJson(json['closeTime'] as int),
    closeSource: json['closeSource'] as String,
    high: (json['high'] as num)?.toDouble(),
    highTime: const DateTimeEpochConverter().fromJson(json['highTime'] as int),
    highSource: json['highSource'] as String,
    low: (json['low'] as num)?.toDouble(),
    lowTime: const DateTimeEpochConverter().fromJson(json['lowTime'] as int),
    lowSource: json['lowSource'] as String,
    latestPrice: (json['latestPrice'] as num)?.toDouble(),
    latestSource: json['latestSource'] as String,
    latestTime: json['latestTime'] as String,
    latestUpdate:
        const DateTimeEpochConverter().fromJson(json['latestUpdate'] as int),
    latestVolume: json['latestVolume'] as int,
    iexRealtimePrice: (json['iexRealtimePrice'] as num)?.toDouble(),
    iexRealtimeSize: json['iexRealtimeSize'] as int,
    iexLastUpdated:
        const DateTimeEpochConverter().fromJson(json['iexLastUpdated'] as int),
    delayedPrice: (json['delayedPrice'] as num)?.toDouble(),
    delayedPriceTime: const DateTimeEpochConverter()
        .fromJson(json['delayedPriceTime'] as int),
    oddLotDelayedPrice: (json['oddLotDelayedPrice'] as num)?.toDouble(),
    oddLotDelayedPriceTime: const DateTimeEpochConverter()
        .fromJson(json['oddLotDelayedPriceTime'] as int),
    extendedPrice: (json['extendedPrice'] as num)?.toDouble(),
    extendedChange: (json['extendedChange'] as num)?.toDouble(),
    extendedChangePercent: (json['extendedChangePercent'] as num)?.toDouble(),
    extendedPriceTime: const DateTimeEpochConverter()
        .fromJson(json['extendedPriceTime'] as int),
    previousClose: (json['previousClose'] as num)?.toDouble(),
    previousVolume: json['previousVolume'] as int,
    change: (json['change'] as num)?.toDouble(),
    changePercent: (json['changePercent'] as num)?.toDouble(),
    volume: json['volume'] as int,
    iexMarketPercent: (json['iexMarketPercent'] as num)?.toDouble(),
    iexVolume: json['iexVolume'] as int,
    avgTotalVolume: json['avgTotalVolume'] as int,
    iexBidPrice: (json['iexBidPrice'] as num)?.toDouble(),
    iexBidSize: (json['iexBidSize'] as num)?.toDouble(),
    iexAskPrice: (json['iexAskPrice'] as num)?.toDouble(),
    iexAskSize: json['iexAskSize'] as int,
    iexOpen: (json['iexOpen'] as num)?.toDouble(),
    iexOpenTime:
        const DateTimeEpochConverter().fromJson(json['iexOpenTime'] as int),
    iexClose: (json['iexClose'] as num)?.toDouble(),
    iexCloseTime:
        const DateTimeEpochConverter().fromJson(json['iexCloseTime'] as int),
    marketCap: json['marketCap'] as int,
    peRatio: (json['peRatio'] as num)?.toDouble(),
    week52High: (json['week52High'] as num)?.toDouble(),
    week52Low: (json['week52Low'] as num)?.toDouble(),
    ytdChange: (json['ytdChange'] as num)?.toDouble(),
    lastTradeTime:
        const DateTimeEpochConverter().fromJson(json['lastTradeTime'] as int),
    isUSMarketOpen: json['isUSMarketOpen'] as bool,
  );
}

Map<String, dynamic> _$_$_QuoteToJson(_$_Quote instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'companyName': instance.companyName,
      'primaryExchange': instance.primaryExchange,
      'calculationPrice': instance.calculationPrice,
      'open': instance.open,
      'openTime': const DateTimeEpochConverter().toJson(instance.openTime),
      'openSource': instance.openSource,
      'close': instance.close,
      'closeTime': const DateTimeEpochConverter().toJson(instance.closeTime),
      'closeSource': instance.closeSource,
      'high': instance.high,
      'highTime': const DateTimeEpochConverter().toJson(instance.highTime),
      'highSource': instance.highSource,
      'low': instance.low,
      'lowTime': const DateTimeEpochConverter().toJson(instance.lowTime),
      'lowSource': instance.lowSource,
      'latestPrice': instance.latestPrice,
      'latestSource': instance.latestSource,
      'latestTime': instance.latestTime,
      'latestUpdate':
          const DateTimeEpochConverter().toJson(instance.latestUpdate),
      'latestVolume': instance.latestVolume,
      'iexRealtimePrice': instance.iexRealtimePrice,
      'iexRealtimeSize': instance.iexRealtimeSize,
      'iexLastUpdated':
          const DateTimeEpochConverter().toJson(instance.iexLastUpdated),
      'delayedPrice': instance.delayedPrice,
      'delayedPriceTime':
          const DateTimeEpochConverter().toJson(instance.delayedPriceTime),
      'oddLotDelayedPrice': instance.oddLotDelayedPrice,
      'oddLotDelayedPriceTime': const DateTimeEpochConverter()
          .toJson(instance.oddLotDelayedPriceTime),
      'extendedPrice': instance.extendedPrice,
      'extendedChange': instance.extendedChange,
      'extendedChangePercent': instance.extendedChangePercent,
      'extendedPriceTime':
          const DateTimeEpochConverter().toJson(instance.extendedPriceTime),
      'previousClose': instance.previousClose,
      'previousVolume': instance.previousVolume,
      'change': instance.change,
      'changePercent': instance.changePercent,
      'volume': instance.volume,
      'iexMarketPercent': instance.iexMarketPercent,
      'iexVolume': instance.iexVolume,
      'avgTotalVolume': instance.avgTotalVolume,
      'iexBidPrice': instance.iexBidPrice,
      'iexBidSize': instance.iexBidSize,
      'iexAskPrice': instance.iexAskPrice,
      'iexAskSize': instance.iexAskSize,
      'iexOpen': instance.iexOpen,
      'iexOpenTime':
          const DateTimeEpochConverter().toJson(instance.iexOpenTime),
      'iexClose': instance.iexClose,
      'iexCloseTime':
          const DateTimeEpochConverter().toJson(instance.iexCloseTime),
      'marketCap': instance.marketCap,
      'peRatio': instance.peRatio,
      'week52High': instance.week52High,
      'week52Low': instance.week52Low,
      'ytdChange': instance.ytdChange,
      'lastTradeTime':
          const DateTimeEpochConverter().toJson(instance.lastTradeTime),
      'isUSMarketOpen': instance.isUSMarketOpen,
    };

_$_Chart _$_$_ChartFromJson(Map<String, dynamic> json) {
  return _$_Chart(
    json['date'] as String,
    (json['open'] as num)?.toDouble(),
    (json['close'] as num)?.toDouble(),
    (json['high'] as num)?.toDouble(),
    (json['low'] as num)?.toDouble(),
    json['volume'] as int,
    (json['uOpen'] as num)?.toDouble(),
    (json['uClose'] as num)?.toDouble(),
    (json['uHigh'] as num)?.toDouble(),
    (json['uLow'] as num)?.toDouble(),
    json['uVolume'] as int,
    (json['change'] as num)?.toDouble(),
    (json['changePercent'] as num)?.toDouble(),
    json['label'] as String,
    (json['changeOverTime'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ChartToJson(_$_Chart instance) => <String, dynamic>{
      'date': instance.date,
      'open': instance.open,
      'close': instance.close,
      'high': instance.high,
      'low': instance.low,
      'volume': instance.volume,
      'uOpen': instance.uOpen,
      'uClose': instance.uClose,
      'uHigh': instance.uHigh,
      'uLow': instance.uLow,
      'uVolume': instance.uVolume,
      'change': instance.change,
      'changePercent': instance.changePercent,
      'label': instance.label,
      'changeOverTime': instance.changeOverTime,
    };

_$_Listing _$_$_ListingFromJson(Map<String, dynamic> json) {
  return _$_Listing(
    json['symbol'] as String,
    json['exchange'] as String,
    json['name'] as String,
    json['date'] as String,
    json['type'] as String,
    json['iexId'] as String,
    json['region'] as String,
    json['currency'] as String,
    json['isEnabled'] as bool,
    figi: json['figi'] as String,
    cik: json['cik'] as String,
  );
}

Map<String, dynamic> _$_$_ListingToJson(_$_Listing instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'exchange': instance.exchange,
      'name': instance.name,
      'date': instance.date,
      'type': instance.type,
      'iexId': instance.iexId,
      'region': instance.region,
      'currency': instance.currency,
      'isEnabled': instance.isEnabled,
      'figi': instance.figi,
      'cik': instance.cik,
    };
