// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'iex_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IexResponse _$IexResponseFromJson(Map<String, dynamic> json) {
  return _IexResponse.fromJson(json);
}

class _$IexResponseTearOff {
  const _$IexResponseTearOff();

  _IexResponse call({Map<String, IexStock> stocks}) {
    return _IexResponse(
      stocks: stocks,
    );
  }
}

// ignore: unused_element
const $IexResponse = _$IexResponseTearOff();

mixin _$IexResponse {
  Map<String, IexStock> get stocks;

  Map<String, dynamic> toJson();
  $IexResponseCopyWith<IexResponse> get copyWith;
}

abstract class $IexResponseCopyWith<$Res> {
  factory $IexResponseCopyWith(
          IexResponse value, $Res Function(IexResponse) then) =
      _$IexResponseCopyWithImpl<$Res>;
  $Res call({Map<String, IexStock> stocks});
}

class _$IexResponseCopyWithImpl<$Res> implements $IexResponseCopyWith<$Res> {
  _$IexResponseCopyWithImpl(this._value, this._then);

  final IexResponse _value;
  // ignore: unused_field
  final $Res Function(IexResponse) _then;

  @override
  $Res call({
    Object stocks = freezed,
  }) {
    return _then(_value.copyWith(
      stocks:
          stocks == freezed ? _value.stocks : stocks as Map<String, IexStock>,
    ));
  }
}

abstract class _$IexResponseCopyWith<$Res>
    implements $IexResponseCopyWith<$Res> {
  factory _$IexResponseCopyWith(
          _IexResponse value, $Res Function(_IexResponse) then) =
      __$IexResponseCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, IexStock> stocks});
}

class __$IexResponseCopyWithImpl<$Res> extends _$IexResponseCopyWithImpl<$Res>
    implements _$IexResponseCopyWith<$Res> {
  __$IexResponseCopyWithImpl(
      _IexResponse _value, $Res Function(_IexResponse) _then)
      : super(_value, (v) => _then(v as _IexResponse));

  @override
  _IexResponse get _value => super._value as _IexResponse;

  @override
  $Res call({
    Object stocks = freezed,
  }) {
    return _then(_IexResponse(
      stocks:
          stocks == freezed ? _value.stocks : stocks as Map<String, IexStock>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_IexResponse with DiagnosticableTreeMixin implements _IexResponse {
  const _$_IexResponse({this.stocks});

  factory _$_IexResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_IexResponseFromJson(json);

  @override
  final Map<String, IexStock> stocks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IexResponse(stocks: $stocks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IexResponse'))
      ..add(DiagnosticsProperty('stocks', stocks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IexResponse &&
            (identical(other.stocks, stocks) ||
                const DeepCollectionEquality().equals(other.stocks, stocks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stocks);

  @override
  _$IexResponseCopyWith<_IexResponse> get copyWith =>
      __$IexResponseCopyWithImpl<_IexResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IexResponseToJson(this);
  }
}

abstract class _IexResponse implements IexResponse {
  const factory _IexResponse({Map<String, IexStock> stocks}) = _$_IexResponse;

  factory _IexResponse.fromJson(Map<String, dynamic> json) =
      _$_IexResponse.fromJson;

  @override
  Map<String, IexStock> get stocks;
  @override
  _$IexResponseCopyWith<_IexResponse> get copyWith;
}

IexStock _$IexStockFromJson(Map<String, dynamic> json) {
  return _IexStock.fromJson(json);
}

class _$IexStockTearOff {
  const _$IexStockTearOff();

  _IexStock call(@JsonKey(name: 'quote') Quote quote,
      {@JsonKey(name: 'chart') List<Chart> chart}) {
    return _IexStock(
      quote,
      chart: chart,
    );
  }
}

// ignore: unused_element
const $IexStock = _$IexStockTearOff();

mixin _$IexStock {
  @JsonKey(name: 'quote')
  Quote get quote;
  @JsonKey(name: 'chart')
  List<Chart> get chart;

  Map<String, dynamic> toJson();
  $IexStockCopyWith<IexStock> get copyWith;
}

abstract class $IexStockCopyWith<$Res> {
  factory $IexStockCopyWith(IexStock value, $Res Function(IexStock) then) =
      _$IexStockCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'quote') Quote quote,
      @JsonKey(name: 'chart') List<Chart> chart});

  $QuoteCopyWith<$Res> get quote;
}

class _$IexStockCopyWithImpl<$Res> implements $IexStockCopyWith<$Res> {
  _$IexStockCopyWithImpl(this._value, this._then);

  final IexStock _value;
  // ignore: unused_field
  final $Res Function(IexStock) _then;

  @override
  $Res call({
    Object quote = freezed,
    Object chart = freezed,
  }) {
    return _then(_value.copyWith(
      quote: quote == freezed ? _value.quote : quote as Quote,
      chart: chart == freezed ? _value.chart : chart as List<Chart>,
    ));
  }

  @override
  $QuoteCopyWith<$Res> get quote {
    if (_value.quote == null) {
      return null;
    }
    return $QuoteCopyWith<$Res>(_value.quote, (value) {
      return _then(_value.copyWith(quote: value));
    });
  }
}

abstract class _$IexStockCopyWith<$Res> implements $IexStockCopyWith<$Res> {
  factory _$IexStockCopyWith(_IexStock value, $Res Function(_IexStock) then) =
      __$IexStockCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'quote') Quote quote,
      @JsonKey(name: 'chart') List<Chart> chart});

  @override
  $QuoteCopyWith<$Res> get quote;
}

class __$IexStockCopyWithImpl<$Res> extends _$IexStockCopyWithImpl<$Res>
    implements _$IexStockCopyWith<$Res> {
  __$IexStockCopyWithImpl(_IexStock _value, $Res Function(_IexStock) _then)
      : super(_value, (v) => _then(v as _IexStock));

  @override
  _IexStock get _value => super._value as _IexStock;

  @override
  $Res call({
    Object quote = freezed,
    Object chart = freezed,
  }) {
    return _then(_IexStock(
      quote == freezed ? _value.quote : quote as Quote,
      chart: chart == freezed ? _value.chart : chart as List<Chart>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_IexStock with DiagnosticableTreeMixin implements _IexStock {
  const _$_IexStock(@JsonKey(name: 'quote') this.quote,
      {@JsonKey(name: 'chart') this.chart})
      : assert(quote != null);

  factory _$_IexStock.fromJson(Map<String, dynamic> json) =>
      _$_$_IexStockFromJson(json);

  @override
  @JsonKey(name: 'quote')
  final Quote quote;
  @override
  @JsonKey(name: 'chart')
  final List<Chart> chart;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IexStock(quote: $quote, chart: $chart)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IexStock'))
      ..add(DiagnosticsProperty('quote', quote))
      ..add(DiagnosticsProperty('chart', chart));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IexStock &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)) &&
            (identical(other.chart, chart) ||
                const DeepCollectionEquality().equals(other.chart, chart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quote) ^
      const DeepCollectionEquality().hash(chart);

  @override
  _$IexStockCopyWith<_IexStock> get copyWith =>
      __$IexStockCopyWithImpl<_IexStock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IexStockToJson(this);
  }
}

abstract class _IexStock implements IexStock {
  const factory _IexStock(@JsonKey(name: 'quote') Quote quote,
      {@JsonKey(name: 'chart') List<Chart> chart}) = _$_IexStock;

  factory _IexStock.fromJson(Map<String, dynamic> json) = _$_IexStock.fromJson;

  @override
  @JsonKey(name: 'quote')
  Quote get quote;
  @override
  @JsonKey(name: 'chart')
  List<Chart> get chart;
  @override
  _$IexStockCopyWith<_IexStock> get copyWith;
}

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return _Quote.fromJson(json);
}

class _$QuoteTearOff {
  const _$QuoteTearOff();

  _Quote call(String symbol, String companyName,
      {String primaryExchange,
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
      bool isUSMarketOpen}) {
    return _Quote(
      symbol,
      companyName,
      primaryExchange: primaryExchange,
      calculationPrice: calculationPrice,
      open: open,
      openTime: openTime,
      openSource: openSource,
      close: close,
      closeTime: closeTime,
      closeSource: closeSource,
      high: high,
      highTime: highTime,
      highSource: highSource,
      low: low,
      lowTime: lowTime,
      lowSource: lowSource,
      latestPrice: latestPrice,
      latestSource: latestSource,
      latestTime: latestTime,
      latestUpdate: latestUpdate,
      latestVolume: latestVolume,
      iexRealtimePrice: iexRealtimePrice,
      iexRealtimeSize: iexRealtimeSize,
      iexLastUpdated: iexLastUpdated,
      delayedPrice: delayedPrice,
      delayedPriceTime: delayedPriceTime,
      oddLotDelayedPrice: oddLotDelayedPrice,
      oddLotDelayedPriceTime: oddLotDelayedPriceTime,
      extendedPrice: extendedPrice,
      extendedChange: extendedChange,
      extendedChangePercent: extendedChangePercent,
      extendedPriceTime: extendedPriceTime,
      previousClose: previousClose,
      previousVolume: previousVolume,
      change: change,
      changePercent: changePercent,
      volume: volume,
      iexMarketPercent: iexMarketPercent,
      iexVolume: iexVolume,
      avgTotalVolume: avgTotalVolume,
      iexBidPrice: iexBidPrice,
      iexBidSize: iexBidSize,
      iexAskPrice: iexAskPrice,
      iexAskSize: iexAskSize,
      iexOpen: iexOpen,
      iexOpenTime: iexOpenTime,
      iexClose: iexClose,
      iexCloseTime: iexCloseTime,
      marketCap: marketCap,
      peRatio: peRatio,
      week52High: week52High,
      week52Low: week52Low,
      ytdChange: ytdChange,
      lastTradeTime: lastTradeTime,
      isUSMarketOpen: isUSMarketOpen,
    );
  }
}

// ignore: unused_element
const $Quote = _$QuoteTearOff();

mixin _$Quote {
  String get symbol;
  String get companyName;
  String get primaryExchange;
  String get calculationPrice;
  double get open;
  @DateTimeEpochConverter()
  DateTime get openTime;
  String get openSource;
  double get close;
  @DateTimeEpochConverter()
  DateTime get closeTime;
  String get closeSource;
  double get high;
  @DateTimeEpochConverter()
  DateTime get highTime;
  String get highSource;
  double get low;
  @DateTimeEpochConverter()
  DateTime get lowTime;
  String get lowSource;
  double get latestPrice;
  String get latestSource;
  String get latestTime;
  @DateTimeEpochConverter()
  DateTime get latestUpdate;
  int get latestVolume;
  double get iexRealtimePrice;
  int get iexRealtimeSize;
  @DateTimeEpochConverter()
  DateTime get iexLastUpdated;
  double get delayedPrice;
  @DateTimeEpochConverter()
  DateTime get delayedPriceTime;
  double get oddLotDelayedPrice;
  @DateTimeEpochConverter()
  DateTime get oddLotDelayedPriceTime;
  double get extendedPrice;
  double get extendedChange;
  double get extendedChangePercent;
  @DateTimeEpochConverter()
  DateTime get extendedPriceTime;
  double get previousClose;
  int get previousVolume;
  double get change;
  double get changePercent;
  int get volume;
  double get iexMarketPercent;
  int get iexVolume;
  int get avgTotalVolume;
  double get iexBidPrice;
  double get iexBidSize;
  double get iexAskPrice;
  int get iexAskSize;
  double get iexOpen;
  @DateTimeEpochConverter()
  DateTime get iexOpenTime;
  double get iexClose;
  @DateTimeEpochConverter()
  DateTime get iexCloseTime;
  int get marketCap;
  double get peRatio;
  double get week52High;
  double get week52Low;
  double get ytdChange;
  @DateTimeEpochConverter()
  DateTime get lastTradeTime;
  bool get isUSMarketOpen;

  Map<String, dynamic> toJson();
  $QuoteCopyWith<Quote> get copyWith;
}

abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res>;
  $Res call(
      {String symbol,
      String companyName,
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
      bool isUSMarketOpen});
}

class _$QuoteCopyWithImpl<$Res> implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  final Quote _value;
  // ignore: unused_field
  final $Res Function(Quote) _then;

  @override
  $Res call({
    Object symbol = freezed,
    Object companyName = freezed,
    Object primaryExchange = freezed,
    Object calculationPrice = freezed,
    Object open = freezed,
    Object openTime = freezed,
    Object openSource = freezed,
    Object close = freezed,
    Object closeTime = freezed,
    Object closeSource = freezed,
    Object high = freezed,
    Object highTime = freezed,
    Object highSource = freezed,
    Object low = freezed,
    Object lowTime = freezed,
    Object lowSource = freezed,
    Object latestPrice = freezed,
    Object latestSource = freezed,
    Object latestTime = freezed,
    Object latestUpdate = freezed,
    Object latestVolume = freezed,
    Object iexRealtimePrice = freezed,
    Object iexRealtimeSize = freezed,
    Object iexLastUpdated = freezed,
    Object delayedPrice = freezed,
    Object delayedPriceTime = freezed,
    Object oddLotDelayedPrice = freezed,
    Object oddLotDelayedPriceTime = freezed,
    Object extendedPrice = freezed,
    Object extendedChange = freezed,
    Object extendedChangePercent = freezed,
    Object extendedPriceTime = freezed,
    Object previousClose = freezed,
    Object previousVolume = freezed,
    Object change = freezed,
    Object changePercent = freezed,
    Object volume = freezed,
    Object iexMarketPercent = freezed,
    Object iexVolume = freezed,
    Object avgTotalVolume = freezed,
    Object iexBidPrice = freezed,
    Object iexBidSize = freezed,
    Object iexAskPrice = freezed,
    Object iexAskSize = freezed,
    Object iexOpen = freezed,
    Object iexOpenTime = freezed,
    Object iexClose = freezed,
    Object iexCloseTime = freezed,
    Object marketCap = freezed,
    Object peRatio = freezed,
    Object week52High = freezed,
    Object week52Low = freezed,
    Object ytdChange = freezed,
    Object lastTradeTime = freezed,
    Object isUSMarketOpen = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed ? _value.symbol : symbol as String,
      companyName:
          companyName == freezed ? _value.companyName : companyName as String,
      primaryExchange: primaryExchange == freezed
          ? _value.primaryExchange
          : primaryExchange as String,
      calculationPrice: calculationPrice == freezed
          ? _value.calculationPrice
          : calculationPrice as String,
      open: open == freezed ? _value.open : open as double,
      openTime: openTime == freezed ? _value.openTime : openTime as DateTime,
      openSource:
          openSource == freezed ? _value.openSource : openSource as String,
      close: close == freezed ? _value.close : close as double,
      closeTime:
          closeTime == freezed ? _value.closeTime : closeTime as DateTime,
      closeSource:
          closeSource == freezed ? _value.closeSource : closeSource as String,
      high: high == freezed ? _value.high : high as double,
      highTime: highTime == freezed ? _value.highTime : highTime as DateTime,
      highSource:
          highSource == freezed ? _value.highSource : highSource as String,
      low: low == freezed ? _value.low : low as double,
      lowTime: lowTime == freezed ? _value.lowTime : lowTime as DateTime,
      lowSource: lowSource == freezed ? _value.lowSource : lowSource as String,
      latestPrice:
          latestPrice == freezed ? _value.latestPrice : latestPrice as double,
      latestSource: latestSource == freezed
          ? _value.latestSource
          : latestSource as String,
      latestTime:
          latestTime == freezed ? _value.latestTime : latestTime as String,
      latestUpdate: latestUpdate == freezed
          ? _value.latestUpdate
          : latestUpdate as DateTime,
      latestVolume:
          latestVolume == freezed ? _value.latestVolume : latestVolume as int,
      iexRealtimePrice: iexRealtimePrice == freezed
          ? _value.iexRealtimePrice
          : iexRealtimePrice as double,
      iexRealtimeSize: iexRealtimeSize == freezed
          ? _value.iexRealtimeSize
          : iexRealtimeSize as int,
      iexLastUpdated: iexLastUpdated == freezed
          ? _value.iexLastUpdated
          : iexLastUpdated as DateTime,
      delayedPrice: delayedPrice == freezed
          ? _value.delayedPrice
          : delayedPrice as double,
      delayedPriceTime: delayedPriceTime == freezed
          ? _value.delayedPriceTime
          : delayedPriceTime as DateTime,
      oddLotDelayedPrice: oddLotDelayedPrice == freezed
          ? _value.oddLotDelayedPrice
          : oddLotDelayedPrice as double,
      oddLotDelayedPriceTime: oddLotDelayedPriceTime == freezed
          ? _value.oddLotDelayedPriceTime
          : oddLotDelayedPriceTime as DateTime,
      extendedPrice: extendedPrice == freezed
          ? _value.extendedPrice
          : extendedPrice as double,
      extendedChange: extendedChange == freezed
          ? _value.extendedChange
          : extendedChange as double,
      extendedChangePercent: extendedChangePercent == freezed
          ? _value.extendedChangePercent
          : extendedChangePercent as double,
      extendedPriceTime: extendedPriceTime == freezed
          ? _value.extendedPriceTime
          : extendedPriceTime as DateTime,
      previousClose: previousClose == freezed
          ? _value.previousClose
          : previousClose as double,
      previousVolume: previousVolume == freezed
          ? _value.previousVolume
          : previousVolume as int,
      change: change == freezed ? _value.change : change as double,
      changePercent: changePercent == freezed
          ? _value.changePercent
          : changePercent as double,
      volume: volume == freezed ? _value.volume : volume as int,
      iexMarketPercent: iexMarketPercent == freezed
          ? _value.iexMarketPercent
          : iexMarketPercent as double,
      iexVolume: iexVolume == freezed ? _value.iexVolume : iexVolume as int,
      avgTotalVolume: avgTotalVolume == freezed
          ? _value.avgTotalVolume
          : avgTotalVolume as int,
      iexBidPrice:
          iexBidPrice == freezed ? _value.iexBidPrice : iexBidPrice as double,
      iexBidSize:
          iexBidSize == freezed ? _value.iexBidSize : iexBidSize as double,
      iexAskPrice:
          iexAskPrice == freezed ? _value.iexAskPrice : iexAskPrice as double,
      iexAskSize: iexAskSize == freezed ? _value.iexAskSize : iexAskSize as int,
      iexOpen: iexOpen == freezed ? _value.iexOpen : iexOpen as double,
      iexOpenTime:
          iexOpenTime == freezed ? _value.iexOpenTime : iexOpenTime as DateTime,
      iexClose: iexClose == freezed ? _value.iexClose : iexClose as double,
      iexCloseTime: iexCloseTime == freezed
          ? _value.iexCloseTime
          : iexCloseTime as DateTime,
      marketCap: marketCap == freezed ? _value.marketCap : marketCap as int,
      peRatio: peRatio == freezed ? _value.peRatio : peRatio as double,
      week52High:
          week52High == freezed ? _value.week52High : week52High as double,
      week52Low: week52Low == freezed ? _value.week52Low : week52Low as double,
      ytdChange: ytdChange == freezed ? _value.ytdChange : ytdChange as double,
      lastTradeTime: lastTradeTime == freezed
          ? _value.lastTradeTime
          : lastTradeTime as DateTime,
      isUSMarketOpen: isUSMarketOpen == freezed
          ? _value.isUSMarketOpen
          : isUSMarketOpen as bool,
    ));
  }
}

abstract class _$QuoteCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$QuoteCopyWith(_Quote value, $Res Function(_Quote) then) =
      __$QuoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String symbol,
      String companyName,
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
      bool isUSMarketOpen});
}

class __$QuoteCopyWithImpl<$Res> extends _$QuoteCopyWithImpl<$Res>
    implements _$QuoteCopyWith<$Res> {
  __$QuoteCopyWithImpl(_Quote _value, $Res Function(_Quote) _then)
      : super(_value, (v) => _then(v as _Quote));

  @override
  _Quote get _value => super._value as _Quote;

  @override
  $Res call({
    Object symbol = freezed,
    Object companyName = freezed,
    Object primaryExchange = freezed,
    Object calculationPrice = freezed,
    Object open = freezed,
    Object openTime = freezed,
    Object openSource = freezed,
    Object close = freezed,
    Object closeTime = freezed,
    Object closeSource = freezed,
    Object high = freezed,
    Object highTime = freezed,
    Object highSource = freezed,
    Object low = freezed,
    Object lowTime = freezed,
    Object lowSource = freezed,
    Object latestPrice = freezed,
    Object latestSource = freezed,
    Object latestTime = freezed,
    Object latestUpdate = freezed,
    Object latestVolume = freezed,
    Object iexRealtimePrice = freezed,
    Object iexRealtimeSize = freezed,
    Object iexLastUpdated = freezed,
    Object delayedPrice = freezed,
    Object delayedPriceTime = freezed,
    Object oddLotDelayedPrice = freezed,
    Object oddLotDelayedPriceTime = freezed,
    Object extendedPrice = freezed,
    Object extendedChange = freezed,
    Object extendedChangePercent = freezed,
    Object extendedPriceTime = freezed,
    Object previousClose = freezed,
    Object previousVolume = freezed,
    Object change = freezed,
    Object changePercent = freezed,
    Object volume = freezed,
    Object iexMarketPercent = freezed,
    Object iexVolume = freezed,
    Object avgTotalVolume = freezed,
    Object iexBidPrice = freezed,
    Object iexBidSize = freezed,
    Object iexAskPrice = freezed,
    Object iexAskSize = freezed,
    Object iexOpen = freezed,
    Object iexOpenTime = freezed,
    Object iexClose = freezed,
    Object iexCloseTime = freezed,
    Object marketCap = freezed,
    Object peRatio = freezed,
    Object week52High = freezed,
    Object week52Low = freezed,
    Object ytdChange = freezed,
    Object lastTradeTime = freezed,
    Object isUSMarketOpen = freezed,
  }) {
    return _then(_Quote(
      symbol == freezed ? _value.symbol : symbol as String,
      companyName == freezed ? _value.companyName : companyName as String,
      primaryExchange: primaryExchange == freezed
          ? _value.primaryExchange
          : primaryExchange as String,
      calculationPrice: calculationPrice == freezed
          ? _value.calculationPrice
          : calculationPrice as String,
      open: open == freezed ? _value.open : open as double,
      openTime: openTime == freezed ? _value.openTime : openTime as DateTime,
      openSource:
          openSource == freezed ? _value.openSource : openSource as String,
      close: close == freezed ? _value.close : close as double,
      closeTime:
          closeTime == freezed ? _value.closeTime : closeTime as DateTime,
      closeSource:
          closeSource == freezed ? _value.closeSource : closeSource as String,
      high: high == freezed ? _value.high : high as double,
      highTime: highTime == freezed ? _value.highTime : highTime as DateTime,
      highSource:
          highSource == freezed ? _value.highSource : highSource as String,
      low: low == freezed ? _value.low : low as double,
      lowTime: lowTime == freezed ? _value.lowTime : lowTime as DateTime,
      lowSource: lowSource == freezed ? _value.lowSource : lowSource as String,
      latestPrice:
          latestPrice == freezed ? _value.latestPrice : latestPrice as double,
      latestSource: latestSource == freezed
          ? _value.latestSource
          : latestSource as String,
      latestTime:
          latestTime == freezed ? _value.latestTime : latestTime as String,
      latestUpdate: latestUpdate == freezed
          ? _value.latestUpdate
          : latestUpdate as DateTime,
      latestVolume:
          latestVolume == freezed ? _value.latestVolume : latestVolume as int,
      iexRealtimePrice: iexRealtimePrice == freezed
          ? _value.iexRealtimePrice
          : iexRealtimePrice as double,
      iexRealtimeSize: iexRealtimeSize == freezed
          ? _value.iexRealtimeSize
          : iexRealtimeSize as int,
      iexLastUpdated: iexLastUpdated == freezed
          ? _value.iexLastUpdated
          : iexLastUpdated as DateTime,
      delayedPrice: delayedPrice == freezed
          ? _value.delayedPrice
          : delayedPrice as double,
      delayedPriceTime: delayedPriceTime == freezed
          ? _value.delayedPriceTime
          : delayedPriceTime as DateTime,
      oddLotDelayedPrice: oddLotDelayedPrice == freezed
          ? _value.oddLotDelayedPrice
          : oddLotDelayedPrice as double,
      oddLotDelayedPriceTime: oddLotDelayedPriceTime == freezed
          ? _value.oddLotDelayedPriceTime
          : oddLotDelayedPriceTime as DateTime,
      extendedPrice: extendedPrice == freezed
          ? _value.extendedPrice
          : extendedPrice as double,
      extendedChange: extendedChange == freezed
          ? _value.extendedChange
          : extendedChange as double,
      extendedChangePercent: extendedChangePercent == freezed
          ? _value.extendedChangePercent
          : extendedChangePercent as double,
      extendedPriceTime: extendedPriceTime == freezed
          ? _value.extendedPriceTime
          : extendedPriceTime as DateTime,
      previousClose: previousClose == freezed
          ? _value.previousClose
          : previousClose as double,
      previousVolume: previousVolume == freezed
          ? _value.previousVolume
          : previousVolume as int,
      change: change == freezed ? _value.change : change as double,
      changePercent: changePercent == freezed
          ? _value.changePercent
          : changePercent as double,
      volume: volume == freezed ? _value.volume : volume as int,
      iexMarketPercent: iexMarketPercent == freezed
          ? _value.iexMarketPercent
          : iexMarketPercent as double,
      iexVolume: iexVolume == freezed ? _value.iexVolume : iexVolume as int,
      avgTotalVolume: avgTotalVolume == freezed
          ? _value.avgTotalVolume
          : avgTotalVolume as int,
      iexBidPrice:
          iexBidPrice == freezed ? _value.iexBidPrice : iexBidPrice as double,
      iexBidSize:
          iexBidSize == freezed ? _value.iexBidSize : iexBidSize as double,
      iexAskPrice:
          iexAskPrice == freezed ? _value.iexAskPrice : iexAskPrice as double,
      iexAskSize: iexAskSize == freezed ? _value.iexAskSize : iexAskSize as int,
      iexOpen: iexOpen == freezed ? _value.iexOpen : iexOpen as double,
      iexOpenTime:
          iexOpenTime == freezed ? _value.iexOpenTime : iexOpenTime as DateTime,
      iexClose: iexClose == freezed ? _value.iexClose : iexClose as double,
      iexCloseTime: iexCloseTime == freezed
          ? _value.iexCloseTime
          : iexCloseTime as DateTime,
      marketCap: marketCap == freezed ? _value.marketCap : marketCap as int,
      peRatio: peRatio == freezed ? _value.peRatio : peRatio as double,
      week52High:
          week52High == freezed ? _value.week52High : week52High as double,
      week52Low: week52Low == freezed ? _value.week52Low : week52Low as double,
      ytdChange: ytdChange == freezed ? _value.ytdChange : ytdChange as double,
      lastTradeTime: lastTradeTime == freezed
          ? _value.lastTradeTime
          : lastTradeTime as DateTime,
      isUSMarketOpen: isUSMarketOpen == freezed
          ? _value.isUSMarketOpen
          : isUSMarketOpen as bool,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_Quote with DiagnosticableTreeMixin implements _Quote {
  const _$_Quote(this.symbol, this.companyName,
      {this.primaryExchange,
      this.calculationPrice,
      this.open,
      @DateTimeEpochConverter() this.openTime,
      this.openSource,
      this.close,
      @DateTimeEpochConverter() this.closeTime,
      this.closeSource,
      this.high,
      @DateTimeEpochConverter() this.highTime,
      this.highSource,
      this.low,
      @DateTimeEpochConverter() this.lowTime,
      this.lowSource,
      this.latestPrice,
      this.latestSource,
      this.latestTime,
      @DateTimeEpochConverter() this.latestUpdate,
      this.latestVolume,
      this.iexRealtimePrice,
      this.iexRealtimeSize,
      @DateTimeEpochConverter() this.iexLastUpdated,
      this.delayedPrice,
      @DateTimeEpochConverter() this.delayedPriceTime,
      this.oddLotDelayedPrice,
      @DateTimeEpochConverter() this.oddLotDelayedPriceTime,
      this.extendedPrice,
      this.extendedChange,
      this.extendedChangePercent,
      @DateTimeEpochConverter() this.extendedPriceTime,
      this.previousClose,
      this.previousVolume,
      this.change,
      this.changePercent,
      this.volume,
      this.iexMarketPercent,
      this.iexVolume,
      this.avgTotalVolume,
      this.iexBidPrice,
      this.iexBidSize,
      this.iexAskPrice,
      this.iexAskSize,
      this.iexOpen,
      @DateTimeEpochConverter() this.iexOpenTime,
      this.iexClose,
      @DateTimeEpochConverter() this.iexCloseTime,
      this.marketCap,
      this.peRatio,
      this.week52High,
      this.week52Low,
      this.ytdChange,
      @DateTimeEpochConverter() this.lastTradeTime,
      this.isUSMarketOpen})
      : assert(symbol != null),
        assert(companyName != null);

  factory _$_Quote.fromJson(Map<String, dynamic> json) =>
      _$_$_QuoteFromJson(json);

  @override
  final String symbol;
  @override
  final String companyName;
  @override
  final String primaryExchange;
  @override
  final String calculationPrice;
  @override
  final double open;
  @override
  @DateTimeEpochConverter()
  final DateTime openTime;
  @override
  final String openSource;
  @override
  final double close;
  @override
  @DateTimeEpochConverter()
  final DateTime closeTime;
  @override
  final String closeSource;
  @override
  final double high;
  @override
  @DateTimeEpochConverter()
  final DateTime highTime;
  @override
  final String highSource;
  @override
  final double low;
  @override
  @DateTimeEpochConverter()
  final DateTime lowTime;
  @override
  final String lowSource;
  @override
  final double latestPrice;
  @override
  final String latestSource;
  @override
  final String latestTime;
  @override
  @DateTimeEpochConverter()
  final DateTime latestUpdate;
  @override
  final int latestVolume;
  @override
  final double iexRealtimePrice;
  @override
  final int iexRealtimeSize;
  @override
  @DateTimeEpochConverter()
  final DateTime iexLastUpdated;
  @override
  final double delayedPrice;
  @override
  @DateTimeEpochConverter()
  final DateTime delayedPriceTime;
  @override
  final double oddLotDelayedPrice;
  @override
  @DateTimeEpochConverter()
  final DateTime oddLotDelayedPriceTime;
  @override
  final double extendedPrice;
  @override
  final double extendedChange;
  @override
  final double extendedChangePercent;
  @override
  @DateTimeEpochConverter()
  final DateTime extendedPriceTime;
  @override
  final double previousClose;
  @override
  final int previousVolume;
  @override
  final double change;
  @override
  final double changePercent;
  @override
  final int volume;
  @override
  final double iexMarketPercent;
  @override
  final int iexVolume;
  @override
  final int avgTotalVolume;
  @override
  final double iexBidPrice;
  @override
  final double iexBidSize;
  @override
  final double iexAskPrice;
  @override
  final int iexAskSize;
  @override
  final double iexOpen;
  @override
  @DateTimeEpochConverter()
  final DateTime iexOpenTime;
  @override
  final double iexClose;
  @override
  @DateTimeEpochConverter()
  final DateTime iexCloseTime;
  @override
  final int marketCap;
  @override
  final double peRatio;
  @override
  final double week52High;
  @override
  final double week52Low;
  @override
  final double ytdChange;
  @override
  @DateTimeEpochConverter()
  final DateTime lastTradeTime;
  @override
  final bool isUSMarketOpen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Quote(symbol: $symbol, companyName: $companyName, primaryExchange: $primaryExchange, calculationPrice: $calculationPrice, open: $open, openTime: $openTime, openSource: $openSource, close: $close, closeTime: $closeTime, closeSource: $closeSource, high: $high, highTime: $highTime, highSource: $highSource, low: $low, lowTime: $lowTime, lowSource: $lowSource, latestPrice: $latestPrice, latestSource: $latestSource, latestTime: $latestTime, latestUpdate: $latestUpdate, latestVolume: $latestVolume, iexRealtimePrice: $iexRealtimePrice, iexRealtimeSize: $iexRealtimeSize, iexLastUpdated: $iexLastUpdated, delayedPrice: $delayedPrice, delayedPriceTime: $delayedPriceTime, oddLotDelayedPrice: $oddLotDelayedPrice, oddLotDelayedPriceTime: $oddLotDelayedPriceTime, extendedPrice: $extendedPrice, extendedChange: $extendedChange, extendedChangePercent: $extendedChangePercent, extendedPriceTime: $extendedPriceTime, previousClose: $previousClose, previousVolume: $previousVolume, change: $change, changePercent: $changePercent, volume: $volume, iexMarketPercent: $iexMarketPercent, iexVolume: $iexVolume, avgTotalVolume: $avgTotalVolume, iexBidPrice: $iexBidPrice, iexBidSize: $iexBidSize, iexAskPrice: $iexAskPrice, iexAskSize: $iexAskSize, iexOpen: $iexOpen, iexOpenTime: $iexOpenTime, iexClose: $iexClose, iexCloseTime: $iexCloseTime, marketCap: $marketCap, peRatio: $peRatio, week52High: $week52High, week52Low: $week52Low, ytdChange: $ytdChange, lastTradeTime: $lastTradeTime, isUSMarketOpen: $isUSMarketOpen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Quote'))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('companyName', companyName))
      ..add(DiagnosticsProperty('primaryExchange', primaryExchange))
      ..add(DiagnosticsProperty('calculationPrice', calculationPrice))
      ..add(DiagnosticsProperty('open', open))
      ..add(DiagnosticsProperty('openTime', openTime))
      ..add(DiagnosticsProperty('openSource', openSource))
      ..add(DiagnosticsProperty('close', close))
      ..add(DiagnosticsProperty('closeTime', closeTime))
      ..add(DiagnosticsProperty('closeSource', closeSource))
      ..add(DiagnosticsProperty('high', high))
      ..add(DiagnosticsProperty('highTime', highTime))
      ..add(DiagnosticsProperty('highSource', highSource))
      ..add(DiagnosticsProperty('low', low))
      ..add(DiagnosticsProperty('lowTime', lowTime))
      ..add(DiagnosticsProperty('lowSource', lowSource))
      ..add(DiagnosticsProperty('latestPrice', latestPrice))
      ..add(DiagnosticsProperty('latestSource', latestSource))
      ..add(DiagnosticsProperty('latestTime', latestTime))
      ..add(DiagnosticsProperty('latestUpdate', latestUpdate))
      ..add(DiagnosticsProperty('latestVolume', latestVolume))
      ..add(DiagnosticsProperty('iexRealtimePrice', iexRealtimePrice))
      ..add(DiagnosticsProperty('iexRealtimeSize', iexRealtimeSize))
      ..add(DiagnosticsProperty('iexLastUpdated', iexLastUpdated))
      ..add(DiagnosticsProperty('delayedPrice', delayedPrice))
      ..add(DiagnosticsProperty('delayedPriceTime', delayedPriceTime))
      ..add(DiagnosticsProperty('oddLotDelayedPrice', oddLotDelayedPrice))
      ..add(
          DiagnosticsProperty('oddLotDelayedPriceTime', oddLotDelayedPriceTime))
      ..add(DiagnosticsProperty('extendedPrice', extendedPrice))
      ..add(DiagnosticsProperty('extendedChange', extendedChange))
      ..add(DiagnosticsProperty('extendedChangePercent', extendedChangePercent))
      ..add(DiagnosticsProperty('extendedPriceTime', extendedPriceTime))
      ..add(DiagnosticsProperty('previousClose', previousClose))
      ..add(DiagnosticsProperty('previousVolume', previousVolume))
      ..add(DiagnosticsProperty('change', change))
      ..add(DiagnosticsProperty('changePercent', changePercent))
      ..add(DiagnosticsProperty('volume', volume))
      ..add(DiagnosticsProperty('iexMarketPercent', iexMarketPercent))
      ..add(DiagnosticsProperty('iexVolume', iexVolume))
      ..add(DiagnosticsProperty('avgTotalVolume', avgTotalVolume))
      ..add(DiagnosticsProperty('iexBidPrice', iexBidPrice))
      ..add(DiagnosticsProperty('iexBidSize', iexBidSize))
      ..add(DiagnosticsProperty('iexAskPrice', iexAskPrice))
      ..add(DiagnosticsProperty('iexAskSize', iexAskSize))
      ..add(DiagnosticsProperty('iexOpen', iexOpen))
      ..add(DiagnosticsProperty('iexOpenTime', iexOpenTime))
      ..add(DiagnosticsProperty('iexClose', iexClose))
      ..add(DiagnosticsProperty('iexCloseTime', iexCloseTime))
      ..add(DiagnosticsProperty('marketCap', marketCap))
      ..add(DiagnosticsProperty('peRatio', peRatio))
      ..add(DiagnosticsProperty('week52High', week52High))
      ..add(DiagnosticsProperty('week52Low', week52Low))
      ..add(DiagnosticsProperty('ytdChange', ytdChange))
      ..add(DiagnosticsProperty('lastTradeTime', lastTradeTime))
      ..add(DiagnosticsProperty('isUSMarketOpen', isUSMarketOpen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Quote &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.primaryExchange, primaryExchange) ||
                const DeepCollectionEquality()
                    .equals(other.primaryExchange, primaryExchange)) &&
            (identical(other.calculationPrice, calculationPrice) ||
                const DeepCollectionEquality()
                    .equals(other.calculationPrice, calculationPrice)) &&
            (identical(other.open, open) ||
                const DeepCollectionEquality().equals(other.open, open)) &&
            (identical(other.openTime, openTime) ||
                const DeepCollectionEquality()
                    .equals(other.openTime, openTime)) &&
            (identical(other.openSource, openSource) ||
                const DeepCollectionEquality()
                    .equals(other.openSource, openSource)) &&
            (identical(other.close, close) ||
                const DeepCollectionEquality().equals(other.close, close)) &&
            (identical(other.closeTime, closeTime) ||
                const DeepCollectionEquality()
                    .equals(other.closeTime, closeTime)) &&
            (identical(other.closeSource, closeSource) ||
                const DeepCollectionEquality()
                    .equals(other.closeSource, closeSource)) &&
            (identical(other.high, high) ||
                const DeepCollectionEquality().equals(other.high, high)) &&
            (identical(other.highTime, highTime) ||
                const DeepCollectionEquality()
                    .equals(other.highTime, highTime)) &&
            (identical(other.highSource, highSource) ||
                const DeepCollectionEquality()
                    .equals(other.highSource, highSource)) &&
            (identical(other.low, low) ||
                const DeepCollectionEquality().equals(other.low, low)) &&
            (identical(other.lowTime, lowTime) ||
                const DeepCollectionEquality()
                    .equals(other.lowTime, lowTime)) &&
            (identical(other.lowSource, lowSource) ||
                const DeepCollectionEquality()
                    .equals(other.lowSource, lowSource)) &&
            (identical(other.latestPrice, latestPrice) ||
                const DeepCollectionEquality()
                    .equals(other.latestPrice, latestPrice)) &&
            (identical(other.latestSource, latestSource) ||
                const DeepCollectionEquality()
                    .equals(other.latestSource, latestSource)) &&
            (identical(other.latestTime, latestTime) ||
                const DeepCollectionEquality()
                    .equals(other.latestTime, latestTime)) &&
            (identical(other.latestUpdate, latestUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.latestUpdate, latestUpdate)) &&
            (identical(other.latestVolume, latestVolume) ||
                const DeepCollectionEquality()
                    .equals(other.latestVolume, latestVolume)) &&
            (identical(other.iexRealtimePrice, iexRealtimePrice) ||
                const DeepCollectionEquality()
                    .equals(other.iexRealtimePrice, iexRealtimePrice)) &&
            (identical(other.iexRealtimeSize, iexRealtimeSize) ||
                const DeepCollectionEquality()
                    .equals(other.iexRealtimeSize, iexRealtimeSize)) &&
            (identical(other.iexLastUpdated, iexLastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.iexLastUpdated, iexLastUpdated)) &&
            (identical(other.delayedPrice, delayedPrice) || const DeepCollectionEquality().equals(other.delayedPrice, delayedPrice)) &&
            (identical(other.delayedPriceTime, delayedPriceTime) || const DeepCollectionEquality().equals(other.delayedPriceTime, delayedPriceTime)) &&
            (identical(other.oddLotDelayedPrice, oddLotDelayedPrice) || const DeepCollectionEquality().equals(other.oddLotDelayedPrice, oddLotDelayedPrice)) &&
            (identical(other.oddLotDelayedPriceTime, oddLotDelayedPriceTime) || const DeepCollectionEquality().equals(other.oddLotDelayedPriceTime, oddLotDelayedPriceTime)) &&
            (identical(other.extendedPrice, extendedPrice) || const DeepCollectionEquality().equals(other.extendedPrice, extendedPrice)) &&
            (identical(other.extendedChange, extendedChange) || const DeepCollectionEquality().equals(other.extendedChange, extendedChange)) &&
            (identical(other.extendedChangePercent, extendedChangePercent) || const DeepCollectionEquality().equals(other.extendedChangePercent, extendedChangePercent)) &&
            (identical(other.extendedPriceTime, extendedPriceTime) || const DeepCollectionEquality().equals(other.extendedPriceTime, extendedPriceTime)) &&
            (identical(other.previousClose, previousClose) || const DeepCollectionEquality().equals(other.previousClose, previousClose)) &&
            (identical(other.previousVolume, previousVolume) || const DeepCollectionEquality().equals(other.previousVolume, previousVolume)) &&
            (identical(other.change, change) || const DeepCollectionEquality().equals(other.change, change)) &&
            (identical(other.changePercent, changePercent) || const DeepCollectionEquality().equals(other.changePercent, changePercent)) &&
            (identical(other.volume, volume) || const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.iexMarketPercent, iexMarketPercent) || const DeepCollectionEquality().equals(other.iexMarketPercent, iexMarketPercent)) &&
            (identical(other.iexVolume, iexVolume) || const DeepCollectionEquality().equals(other.iexVolume, iexVolume)) &&
            (identical(other.avgTotalVolume, avgTotalVolume) || const DeepCollectionEquality().equals(other.avgTotalVolume, avgTotalVolume)) &&
            (identical(other.iexBidPrice, iexBidPrice) || const DeepCollectionEquality().equals(other.iexBidPrice, iexBidPrice)) &&
            (identical(other.iexBidSize, iexBidSize) || const DeepCollectionEquality().equals(other.iexBidSize, iexBidSize)) &&
            (identical(other.iexAskPrice, iexAskPrice) || const DeepCollectionEquality().equals(other.iexAskPrice, iexAskPrice)) &&
            (identical(other.iexAskSize, iexAskSize) || const DeepCollectionEquality().equals(other.iexAskSize, iexAskSize)) &&
            (identical(other.iexOpen, iexOpen) || const DeepCollectionEquality().equals(other.iexOpen, iexOpen)) &&
            (identical(other.iexOpenTime, iexOpenTime) || const DeepCollectionEquality().equals(other.iexOpenTime, iexOpenTime)) &&
            (identical(other.iexClose, iexClose) || const DeepCollectionEquality().equals(other.iexClose, iexClose)) &&
            (identical(other.iexCloseTime, iexCloseTime) || const DeepCollectionEquality().equals(other.iexCloseTime, iexCloseTime)) &&
            (identical(other.marketCap, marketCap) || const DeepCollectionEquality().equals(other.marketCap, marketCap)) &&
            (identical(other.peRatio, peRatio) || const DeepCollectionEquality().equals(other.peRatio, peRatio)) &&
            (identical(other.week52High, week52High) || const DeepCollectionEquality().equals(other.week52High, week52High)) &&
            (identical(other.week52Low, week52Low) || const DeepCollectionEquality().equals(other.week52Low, week52Low)) &&
            (identical(other.ytdChange, ytdChange) || const DeepCollectionEquality().equals(other.ytdChange, ytdChange)) &&
            (identical(other.lastTradeTime, lastTradeTime) || const DeepCollectionEquality().equals(other.lastTradeTime, lastTradeTime)) &&
            (identical(other.isUSMarketOpen, isUSMarketOpen) || const DeepCollectionEquality().equals(other.isUSMarketOpen, isUSMarketOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(primaryExchange) ^
      const DeepCollectionEquality().hash(calculationPrice) ^
      const DeepCollectionEquality().hash(open) ^
      const DeepCollectionEquality().hash(openTime) ^
      const DeepCollectionEquality().hash(openSource) ^
      const DeepCollectionEquality().hash(close) ^
      const DeepCollectionEquality().hash(closeTime) ^
      const DeepCollectionEquality().hash(closeSource) ^
      const DeepCollectionEquality().hash(high) ^
      const DeepCollectionEquality().hash(highTime) ^
      const DeepCollectionEquality().hash(highSource) ^
      const DeepCollectionEquality().hash(low) ^
      const DeepCollectionEquality().hash(lowTime) ^
      const DeepCollectionEquality().hash(lowSource) ^
      const DeepCollectionEquality().hash(latestPrice) ^
      const DeepCollectionEquality().hash(latestSource) ^
      const DeepCollectionEquality().hash(latestTime) ^
      const DeepCollectionEquality().hash(latestUpdate) ^
      const DeepCollectionEquality().hash(latestVolume) ^
      const DeepCollectionEquality().hash(iexRealtimePrice) ^
      const DeepCollectionEquality().hash(iexRealtimeSize) ^
      const DeepCollectionEquality().hash(iexLastUpdated) ^
      const DeepCollectionEquality().hash(delayedPrice) ^
      const DeepCollectionEquality().hash(delayedPriceTime) ^
      const DeepCollectionEquality().hash(oddLotDelayedPrice) ^
      const DeepCollectionEquality().hash(oddLotDelayedPriceTime) ^
      const DeepCollectionEquality().hash(extendedPrice) ^
      const DeepCollectionEquality().hash(extendedChange) ^
      const DeepCollectionEquality().hash(extendedChangePercent) ^
      const DeepCollectionEquality().hash(extendedPriceTime) ^
      const DeepCollectionEquality().hash(previousClose) ^
      const DeepCollectionEquality().hash(previousVolume) ^
      const DeepCollectionEquality().hash(change) ^
      const DeepCollectionEquality().hash(changePercent) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(iexMarketPercent) ^
      const DeepCollectionEquality().hash(iexVolume) ^
      const DeepCollectionEquality().hash(avgTotalVolume) ^
      const DeepCollectionEquality().hash(iexBidPrice) ^
      const DeepCollectionEquality().hash(iexBidSize) ^
      const DeepCollectionEquality().hash(iexAskPrice) ^
      const DeepCollectionEquality().hash(iexAskSize) ^
      const DeepCollectionEquality().hash(iexOpen) ^
      const DeepCollectionEquality().hash(iexOpenTime) ^
      const DeepCollectionEquality().hash(iexClose) ^
      const DeepCollectionEquality().hash(iexCloseTime) ^
      const DeepCollectionEquality().hash(marketCap) ^
      const DeepCollectionEquality().hash(peRatio) ^
      const DeepCollectionEquality().hash(week52High) ^
      const DeepCollectionEquality().hash(week52Low) ^
      const DeepCollectionEquality().hash(ytdChange) ^
      const DeepCollectionEquality().hash(lastTradeTime) ^
      const DeepCollectionEquality().hash(isUSMarketOpen);

  @override
  _$QuoteCopyWith<_Quote> get copyWith =>
      __$QuoteCopyWithImpl<_Quote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuoteToJson(this);
  }
}

abstract class _Quote implements Quote {
  const factory _Quote(String symbol, String companyName,
      {String primaryExchange,
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
      bool isUSMarketOpen}) = _$_Quote;

  factory _Quote.fromJson(Map<String, dynamic> json) = _$_Quote.fromJson;

  @override
  String get symbol;
  @override
  String get companyName;
  @override
  String get primaryExchange;
  @override
  String get calculationPrice;
  @override
  double get open;
  @override
  @DateTimeEpochConverter()
  DateTime get openTime;
  @override
  String get openSource;
  @override
  double get close;
  @override
  @DateTimeEpochConverter()
  DateTime get closeTime;
  @override
  String get closeSource;
  @override
  double get high;
  @override
  @DateTimeEpochConverter()
  DateTime get highTime;
  @override
  String get highSource;
  @override
  double get low;
  @override
  @DateTimeEpochConverter()
  DateTime get lowTime;
  @override
  String get lowSource;
  @override
  double get latestPrice;
  @override
  String get latestSource;
  @override
  String get latestTime;
  @override
  @DateTimeEpochConverter()
  DateTime get latestUpdate;
  @override
  int get latestVolume;
  @override
  double get iexRealtimePrice;
  @override
  int get iexRealtimeSize;
  @override
  @DateTimeEpochConverter()
  DateTime get iexLastUpdated;
  @override
  double get delayedPrice;
  @override
  @DateTimeEpochConverter()
  DateTime get delayedPriceTime;
  @override
  double get oddLotDelayedPrice;
  @override
  @DateTimeEpochConverter()
  DateTime get oddLotDelayedPriceTime;
  @override
  double get extendedPrice;
  @override
  double get extendedChange;
  @override
  double get extendedChangePercent;
  @override
  @DateTimeEpochConverter()
  DateTime get extendedPriceTime;
  @override
  double get previousClose;
  @override
  int get previousVolume;
  @override
  double get change;
  @override
  double get changePercent;
  @override
  int get volume;
  @override
  double get iexMarketPercent;
  @override
  int get iexVolume;
  @override
  int get avgTotalVolume;
  @override
  double get iexBidPrice;
  @override
  double get iexBidSize;
  @override
  double get iexAskPrice;
  @override
  int get iexAskSize;
  @override
  double get iexOpen;
  @override
  @DateTimeEpochConverter()
  DateTime get iexOpenTime;
  @override
  double get iexClose;
  @override
  @DateTimeEpochConverter()
  DateTime get iexCloseTime;
  @override
  int get marketCap;
  @override
  double get peRatio;
  @override
  double get week52High;
  @override
  double get week52Low;
  @override
  double get ytdChange;
  @override
  @DateTimeEpochConverter()
  DateTime get lastTradeTime;
  @override
  bool get isUSMarketOpen;
  @override
  _$QuoteCopyWith<_Quote> get copyWith;
}

Chart _$ChartFromJson(Map<String, dynamic> json) {
  return _Chart.fromJson(json);
}

class _$ChartTearOff {
  const _$ChartTearOff();

  _Chart call(
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
      double changeOverTime) {
    return _Chart(
      date,
      open,
      close,
      high,
      low,
      volume,
      uOpen,
      uClose,
      uHigh,
      uLow,
      uVolume,
      change,
      changePercent,
      label,
      changeOverTime,
    );
  }
}

// ignore: unused_element
const $Chart = _$ChartTearOff();

mixin _$Chart {
  String get date;
  double get open;
  double get close;
  double get high;
  double get low;
  int get volume;
  double get uOpen;
  double get uClose;
  double get uHigh;
  double get uLow;
  int get uVolume;
  double get change;
  double get changePercent;
  String get label;
  double get changeOverTime;

  Map<String, dynamic> toJson();
  $ChartCopyWith<Chart> get copyWith;
}

abstract class $ChartCopyWith<$Res> {
  factory $ChartCopyWith(Chart value, $Res Function(Chart) then) =
      _$ChartCopyWithImpl<$Res>;
  $Res call(
      {String date,
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
      double changeOverTime});
}

class _$ChartCopyWithImpl<$Res> implements $ChartCopyWith<$Res> {
  _$ChartCopyWithImpl(this._value, this._then);

  final Chart _value;
  // ignore: unused_field
  final $Res Function(Chart) _then;

  @override
  $Res call({
    Object date = freezed,
    Object open = freezed,
    Object close = freezed,
    Object high = freezed,
    Object low = freezed,
    Object volume = freezed,
    Object uOpen = freezed,
    Object uClose = freezed,
    Object uHigh = freezed,
    Object uLow = freezed,
    Object uVolume = freezed,
    Object change = freezed,
    Object changePercent = freezed,
    Object label = freezed,
    Object changeOverTime = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as String,
      open: open == freezed ? _value.open : open as double,
      close: close == freezed ? _value.close : close as double,
      high: high == freezed ? _value.high : high as double,
      low: low == freezed ? _value.low : low as double,
      volume: volume == freezed ? _value.volume : volume as int,
      uOpen: uOpen == freezed ? _value.uOpen : uOpen as double,
      uClose: uClose == freezed ? _value.uClose : uClose as double,
      uHigh: uHigh == freezed ? _value.uHigh : uHigh as double,
      uLow: uLow == freezed ? _value.uLow : uLow as double,
      uVolume: uVolume == freezed ? _value.uVolume : uVolume as int,
      change: change == freezed ? _value.change : change as double,
      changePercent: changePercent == freezed
          ? _value.changePercent
          : changePercent as double,
      label: label == freezed ? _value.label : label as String,
      changeOverTime: changeOverTime == freezed
          ? _value.changeOverTime
          : changeOverTime as double,
    ));
  }
}

abstract class _$ChartCopyWith<$Res> implements $ChartCopyWith<$Res> {
  factory _$ChartCopyWith(_Chart value, $Res Function(_Chart) then) =
      __$ChartCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
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
      double changeOverTime});
}

class __$ChartCopyWithImpl<$Res> extends _$ChartCopyWithImpl<$Res>
    implements _$ChartCopyWith<$Res> {
  __$ChartCopyWithImpl(_Chart _value, $Res Function(_Chart) _then)
      : super(_value, (v) => _then(v as _Chart));

  @override
  _Chart get _value => super._value as _Chart;

  @override
  $Res call({
    Object date = freezed,
    Object open = freezed,
    Object close = freezed,
    Object high = freezed,
    Object low = freezed,
    Object volume = freezed,
    Object uOpen = freezed,
    Object uClose = freezed,
    Object uHigh = freezed,
    Object uLow = freezed,
    Object uVolume = freezed,
    Object change = freezed,
    Object changePercent = freezed,
    Object label = freezed,
    Object changeOverTime = freezed,
  }) {
    return _then(_Chart(
      date == freezed ? _value.date : date as String,
      open == freezed ? _value.open : open as double,
      close == freezed ? _value.close : close as double,
      high == freezed ? _value.high : high as double,
      low == freezed ? _value.low : low as double,
      volume == freezed ? _value.volume : volume as int,
      uOpen == freezed ? _value.uOpen : uOpen as double,
      uClose == freezed ? _value.uClose : uClose as double,
      uHigh == freezed ? _value.uHigh : uHigh as double,
      uLow == freezed ? _value.uLow : uLow as double,
      uVolume == freezed ? _value.uVolume : uVolume as int,
      change == freezed ? _value.change : change as double,
      changePercent == freezed ? _value.changePercent : changePercent as double,
      label == freezed ? _value.label : label as String,
      changeOverTime == freezed
          ? _value.changeOverTime
          : changeOverTime as double,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_Chart with DiagnosticableTreeMixin implements _Chart {
  const _$_Chart(
      this.date,
      this.open,
      this.close,
      this.high,
      this.low,
      this.volume,
      this.uOpen,
      this.uClose,
      this.uHigh,
      this.uLow,
      this.uVolume,
      this.change,
      this.changePercent,
      this.label,
      this.changeOverTime)
      : assert(date != null),
        assert(open != null),
        assert(close != null),
        assert(high != null),
        assert(low != null),
        assert(volume != null),
        assert(uOpen != null),
        assert(uClose != null),
        assert(uHigh != null),
        assert(uLow != null),
        assert(uVolume != null),
        assert(change != null),
        assert(changePercent != null),
        assert(label != null),
        assert(changeOverTime != null);

  factory _$_Chart.fromJson(Map<String, dynamic> json) =>
      _$_$_ChartFromJson(json);

  @override
  final String date;
  @override
  final double open;
  @override
  final double close;
  @override
  final double high;
  @override
  final double low;
  @override
  final int volume;
  @override
  final double uOpen;
  @override
  final double uClose;
  @override
  final double uHigh;
  @override
  final double uLow;
  @override
  final int uVolume;
  @override
  final double change;
  @override
  final double changePercent;
  @override
  final String label;
  @override
  final double changeOverTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Chart(date: $date, open: $open, close: $close, high: $high, low: $low, volume: $volume, uOpen: $uOpen, uClose: $uClose, uHigh: $uHigh, uLow: $uLow, uVolume: $uVolume, change: $change, changePercent: $changePercent, label: $label, changeOverTime: $changeOverTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Chart'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('open', open))
      ..add(DiagnosticsProperty('close', close))
      ..add(DiagnosticsProperty('high', high))
      ..add(DiagnosticsProperty('low', low))
      ..add(DiagnosticsProperty('volume', volume))
      ..add(DiagnosticsProperty('uOpen', uOpen))
      ..add(DiagnosticsProperty('uClose', uClose))
      ..add(DiagnosticsProperty('uHigh', uHigh))
      ..add(DiagnosticsProperty('uLow', uLow))
      ..add(DiagnosticsProperty('uVolume', uVolume))
      ..add(DiagnosticsProperty('change', change))
      ..add(DiagnosticsProperty('changePercent', changePercent))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('changeOverTime', changeOverTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Chart &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.open, open) ||
                const DeepCollectionEquality().equals(other.open, open)) &&
            (identical(other.close, close) ||
                const DeepCollectionEquality().equals(other.close, close)) &&
            (identical(other.high, high) ||
                const DeepCollectionEquality().equals(other.high, high)) &&
            (identical(other.low, low) ||
                const DeepCollectionEquality().equals(other.low, low)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.uOpen, uOpen) ||
                const DeepCollectionEquality().equals(other.uOpen, uOpen)) &&
            (identical(other.uClose, uClose) ||
                const DeepCollectionEquality().equals(other.uClose, uClose)) &&
            (identical(other.uHigh, uHigh) ||
                const DeepCollectionEquality().equals(other.uHigh, uHigh)) &&
            (identical(other.uLow, uLow) ||
                const DeepCollectionEquality().equals(other.uLow, uLow)) &&
            (identical(other.uVolume, uVolume) ||
                const DeepCollectionEquality()
                    .equals(other.uVolume, uVolume)) &&
            (identical(other.change, change) ||
                const DeepCollectionEquality().equals(other.change, change)) &&
            (identical(other.changePercent, changePercent) ||
                const DeepCollectionEquality()
                    .equals(other.changePercent, changePercent)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.changeOverTime, changeOverTime) ||
                const DeepCollectionEquality()
                    .equals(other.changeOverTime, changeOverTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(open) ^
      const DeepCollectionEquality().hash(close) ^
      const DeepCollectionEquality().hash(high) ^
      const DeepCollectionEquality().hash(low) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(uOpen) ^
      const DeepCollectionEquality().hash(uClose) ^
      const DeepCollectionEquality().hash(uHigh) ^
      const DeepCollectionEquality().hash(uLow) ^
      const DeepCollectionEquality().hash(uVolume) ^
      const DeepCollectionEquality().hash(change) ^
      const DeepCollectionEquality().hash(changePercent) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(changeOverTime);

  @override
  _$ChartCopyWith<_Chart> get copyWith =>
      __$ChartCopyWithImpl<_Chart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChartToJson(this);
  }
}

abstract class _Chart implements Chart {
  const factory _Chart(
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
      double changeOverTime) = _$_Chart;

  factory _Chart.fromJson(Map<String, dynamic> json) = _$_Chart.fromJson;

  @override
  String get date;
  @override
  double get open;
  @override
  double get close;
  @override
  double get high;
  @override
  double get low;
  @override
  int get volume;
  @override
  double get uOpen;
  @override
  double get uClose;
  @override
  double get uHigh;
  @override
  double get uLow;
  @override
  int get uVolume;
  @override
  double get change;
  @override
  double get changePercent;
  @override
  String get label;
  @override
  double get changeOverTime;
  @override
  _$ChartCopyWith<_Chart> get copyWith;
}

Listing _$ListingFromJson(Map<String, dynamic> json) {
  return _Listing.fromJson(json);
}

class _$ListingTearOff {
  const _$ListingTearOff();

  _Listing call(String symbol, String exchange, String name, String date,
      String type, String iexId, String region, String currency, bool isEnabled,
      {String figi, String cik}) {
    return _Listing(
      symbol,
      exchange,
      name,
      date,
      type,
      iexId,
      region,
      currency,
      isEnabled,
      figi: figi,
      cik: cik,
    );
  }
}

// ignore: unused_element
const $Listing = _$ListingTearOff();

mixin _$Listing {
  String get symbol;
  String get exchange;
  String get name;
  String get date;
  String get type;
  String get iexId;
  String get region;
  String get currency;
  bool get isEnabled;
  String get figi;
  String get cik;

  Map<String, dynamic> toJson();
  $ListingCopyWith<Listing> get copyWith;
}

abstract class $ListingCopyWith<$Res> {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) then) =
      _$ListingCopyWithImpl<$Res>;
  $Res call(
      {String symbol,
      String exchange,
      String name,
      String date,
      String type,
      String iexId,
      String region,
      String currency,
      bool isEnabled,
      String figi,
      String cik});
}

class _$ListingCopyWithImpl<$Res> implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._value, this._then);

  final Listing _value;
  // ignore: unused_field
  final $Res Function(Listing) _then;

  @override
  $Res call({
    Object symbol = freezed,
    Object exchange = freezed,
    Object name = freezed,
    Object date = freezed,
    Object type = freezed,
    Object iexId = freezed,
    Object region = freezed,
    Object currency = freezed,
    Object isEnabled = freezed,
    Object figi = freezed,
    Object cik = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed ? _value.symbol : symbol as String,
      exchange: exchange == freezed ? _value.exchange : exchange as String,
      name: name == freezed ? _value.name : name as String,
      date: date == freezed ? _value.date : date as String,
      type: type == freezed ? _value.type : type as String,
      iexId: iexId == freezed ? _value.iexId : iexId as String,
      region: region == freezed ? _value.region : region as String,
      currency: currency == freezed ? _value.currency : currency as String,
      isEnabled: isEnabled == freezed ? _value.isEnabled : isEnabled as bool,
      figi: figi == freezed ? _value.figi : figi as String,
      cik: cik == freezed ? _value.cik : cik as String,
    ));
  }
}

abstract class _$ListingCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$ListingCopyWith(_Listing value, $Res Function(_Listing) then) =
      __$ListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String symbol,
      String exchange,
      String name,
      String date,
      String type,
      String iexId,
      String region,
      String currency,
      bool isEnabled,
      String figi,
      String cik});
}

class __$ListingCopyWithImpl<$Res> extends _$ListingCopyWithImpl<$Res>
    implements _$ListingCopyWith<$Res> {
  __$ListingCopyWithImpl(_Listing _value, $Res Function(_Listing) _then)
      : super(_value, (v) => _then(v as _Listing));

  @override
  _Listing get _value => super._value as _Listing;

  @override
  $Res call({
    Object symbol = freezed,
    Object exchange = freezed,
    Object name = freezed,
    Object date = freezed,
    Object type = freezed,
    Object iexId = freezed,
    Object region = freezed,
    Object currency = freezed,
    Object isEnabled = freezed,
    Object figi = freezed,
    Object cik = freezed,
  }) {
    return _then(_Listing(
      symbol == freezed ? _value.symbol : symbol as String,
      exchange == freezed ? _value.exchange : exchange as String,
      name == freezed ? _value.name : name as String,
      date == freezed ? _value.date : date as String,
      type == freezed ? _value.type : type as String,
      iexId == freezed ? _value.iexId : iexId as String,
      region == freezed ? _value.region : region as String,
      currency == freezed ? _value.currency : currency as String,
      isEnabled == freezed ? _value.isEnabled : isEnabled as bool,
      figi: figi == freezed ? _value.figi : figi as String,
      cik: cik == freezed ? _value.cik : cik as String,
    ));
  }
}

@JsonSerializable()
class _$_Listing with DiagnosticableTreeMixin implements _Listing {
  const _$_Listing(this.symbol, this.exchange, this.name, this.date, this.type,
      this.iexId, this.region, this.currency, this.isEnabled,
      {this.figi, this.cik})
      : assert(symbol != null),
        assert(exchange != null),
        assert(name != null),
        assert(date != null),
        assert(type != null),
        assert(iexId != null),
        assert(region != null),
        assert(currency != null),
        assert(isEnabled != null);

  factory _$_Listing.fromJson(Map<String, dynamic> json) =>
      _$_$_ListingFromJson(json);

  @override
  final String symbol;
  @override
  final String exchange;
  @override
  final String name;
  @override
  final String date;
  @override
  final String type;
  @override
  final String iexId;
  @override
  final String region;
  @override
  final String currency;
  @override
  final bool isEnabled;
  @override
  final String figi;
  @override
  final String cik;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Listing(symbol: $symbol, exchange: $exchange, name: $name, date: $date, type: $type, iexId: $iexId, region: $region, currency: $currency, isEnabled: $isEnabled, figi: $figi, cik: $cik)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Listing'))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('exchange', exchange))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('iexId', iexId))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('isEnabled', isEnabled))
      ..add(DiagnosticsProperty('figi', figi))
      ..add(DiagnosticsProperty('cik', cik));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Listing &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.exchange, exchange) ||
                const DeepCollectionEquality()
                    .equals(other.exchange, exchange)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.iexId, iexId) ||
                const DeepCollectionEquality().equals(other.iexId, iexId)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)) &&
            (identical(other.figi, figi) ||
                const DeepCollectionEquality().equals(other.figi, figi)) &&
            (identical(other.cik, cik) ||
                const DeepCollectionEquality().equals(other.cik, cik)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(exchange) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(iexId) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(isEnabled) ^
      const DeepCollectionEquality().hash(figi) ^
      const DeepCollectionEquality().hash(cik);

  @override
  _$ListingCopyWith<_Listing> get copyWith =>
      __$ListingCopyWithImpl<_Listing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListingToJson(this);
  }
}

abstract class _Listing implements Listing {
  const factory _Listing(
      String symbol,
      String exchange,
      String name,
      String date,
      String type,
      String iexId,
      String region,
      String currency,
      bool isEnabled,
      {String figi,
      String cik}) = _$_Listing;

  factory _Listing.fromJson(Map<String, dynamic> json) = _$_Listing.fromJson;

  @override
  String get symbol;
  @override
  String get exchange;
  @override
  String get name;
  @override
  String get date;
  @override
  String get type;
  @override
  String get iexId;
  @override
  String get region;
  @override
  String get currency;
  @override
  bool get isEnabled;
  @override
  String get figi;
  @override
  String get cik;
  @override
  _$ListingCopyWith<_Listing> get copyWith;
}
