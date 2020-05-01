// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Stock extends DataClass implements Insertable<Stock> {
  final int id;
  final String symbol;
  final String name;
  Stock({@required this.id, @required this.symbol, @required this.name});
  factory Stock.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Stock(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      symbol:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}symbol']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  factory Stock.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Stock(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String>(name),
    };
  }

  @override
  PortfolioCompanion createCompanion(bool nullToAbsent) {
    return PortfolioCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      symbol:
          symbol == null && nullToAbsent ? const Value.absent() : Value(symbol),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  Stock copyWith({int id, String symbol, String name}) => Stock(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Stock(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(symbol.hashCode, name.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Stock &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.name == this.name);
}

class PortfolioCompanion extends UpdateCompanion<Stock> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> name;
  const PortfolioCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.name = const Value.absent(),
  });
  PortfolioCompanion.insert({
    this.id = const Value.absent(),
    @required String symbol,
    @required String name,
  })  : symbol = Value(symbol),
        name = Value(name);
  PortfolioCompanion copyWith(
      {Value<int> id, Value<String> symbol, Value<String> name}) {
    return PortfolioCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
    );
  }
}

class $PortfolioTable extends Portfolio with TableInfo<$PortfolioTable, Stock> {
  final GeneratedDatabase _db;
  final String _alias;
  $PortfolioTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  GeneratedTextColumn _symbol;
  @override
  GeneratedTextColumn get symbol => _symbol ??= _constructSymbol();
  GeneratedTextColumn _constructSymbol() {
    return GeneratedTextColumn('symbol', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  @override
  List<GeneratedColumn> get $columns => [id, symbol, name];
  @override
  $PortfolioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'portfolio';
  @override
  final String actualTableName = 'portfolio';
  @override
  VerificationContext validateIntegrity(PortfolioCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.symbol.present) {
      context.handle(
          _symbolMeta, symbol.isAcceptableValue(d.symbol.value, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Stock map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Stock.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(PortfolioCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.symbol.present) {
      map['symbol'] = Variable<String, StringType>(d.symbol.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    return map;
  }

  @override
  $PortfolioTable createAlias(String alias) {
    return $PortfolioTable(_db, alias);
  }
}

class Quote extends DataClass implements Insertable<Quote> {
  final int id;
  final String symbol;
  final String name;
  final String calculationPrice;
  final double latestPrice;
  final String latestSource;
  final int latestVolume;
  final DateTime latestTime;
  final double open;
  final DateTime openTime;
  final double close;
  final DateTime closeTime;
  final double high;
  final DateTime highTime;
  final double low;
  final DateTime lowTime;
  final double extendedPrice;
  final double extendedChange;
  final double extendedChangePercent;
  final DateTime extendedPriceTime;
  final double previousClose;
  final int previousVolume;
  final double change;
  final double changePercent;
  final int volume;
  final int avgTotalVolume;
  final int marketCap;
  final double peRatio;
  final double week52High;
  final double week52Low;
  final double ytdChange;
  final DateTime lastTradeTime;
  Quote(
      {@required this.id,
      @required this.symbol,
      @required this.name,
      this.calculationPrice,
      this.latestPrice,
      this.latestSource,
      this.latestVolume,
      this.latestTime,
      this.open,
      this.openTime,
      this.close,
      this.closeTime,
      this.high,
      this.highTime,
      this.low,
      this.lowTime,
      this.extendedPrice,
      this.extendedChange,
      this.extendedChangePercent,
      this.extendedPriceTime,
      this.previousClose,
      this.previousVolume,
      this.change,
      this.changePercent,
      this.volume,
      this.avgTotalVolume,
      this.marketCap,
      this.peRatio,
      this.week52High,
      this.week52Low,
      this.ytdChange,
      this.lastTradeTime});
  factory Quote.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Quote(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      symbol:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}symbol']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      calculationPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}calculation_price']),
      latestPrice: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}latest_price']),
      latestSource: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}latest_source']),
      latestVolume: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}latest_volume']),
      latestTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}latest_time']),
      open: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}open']),
      openTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}open_time']),
      close:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}close']),
      closeTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}close_time']),
      high: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}high']),
      highTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}high_time']),
      low: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}low']),
      lowTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}low_time']),
      extendedPrice: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}extended_price']),
      extendedChange: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}extended_change']),
      extendedChangePercent: doubleType.mapFromDatabaseResponse(
          data['${effectivePrefix}extended_change_percent']),
      extendedPriceTime: dateTimeType.mapFromDatabaseResponse(
          data['${effectivePrefix}extended_price_time']),
      previousClose: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}previous_close']),
      previousVolume: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}previous_volume']),
      change:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}change']),
      changePercent: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}change_percent']),
      volume: intType.mapFromDatabaseResponse(data['${effectivePrefix}volume']),
      avgTotalVolume: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}avg_total_volume']),
      marketCap:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}market_cap']),
      peRatio: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}pe_ratio']),
      week52High: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}week52_high']),
      week52Low: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}week52_low']),
      ytdChange: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}ytd_change']),
      lastTradeTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_trade_time']),
    );
  }
  factory Quote.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Quote(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String>(json['name']),
      calculationPrice: serializer.fromJson<String>(json['calculationPrice']),
      latestPrice: serializer.fromJson<double>(json['latestPrice']),
      latestSource: serializer.fromJson<String>(json['latestSource']),
      latestVolume: serializer.fromJson<int>(json['latestVolume']),
      latestTime: serializer.fromJson<DateTime>(json['latestTime']),
      open: serializer.fromJson<double>(json['open']),
      openTime: serializer.fromJson<DateTime>(json['openTime']),
      close: serializer.fromJson<double>(json['close']),
      closeTime: serializer.fromJson<DateTime>(json['closeTime']),
      high: serializer.fromJson<double>(json['high']),
      highTime: serializer.fromJson<DateTime>(json['highTime']),
      low: serializer.fromJson<double>(json['low']),
      lowTime: serializer.fromJson<DateTime>(json['lowTime']),
      extendedPrice: serializer.fromJson<double>(json['extendedPrice']),
      extendedChange: serializer.fromJson<double>(json['extendedChange']),
      extendedChangePercent:
          serializer.fromJson<double>(json['extendedChangePercent']),
      extendedPriceTime:
          serializer.fromJson<DateTime>(json['extendedPriceTime']),
      previousClose: serializer.fromJson<double>(json['previousClose']),
      previousVolume: serializer.fromJson<int>(json['previousVolume']),
      change: serializer.fromJson<double>(json['change']),
      changePercent: serializer.fromJson<double>(json['changePercent']),
      volume: serializer.fromJson<int>(json['volume']),
      avgTotalVolume: serializer.fromJson<int>(json['avgTotalVolume']),
      marketCap: serializer.fromJson<int>(json['marketCap']),
      peRatio: serializer.fromJson<double>(json['peRatio']),
      week52High: serializer.fromJson<double>(json['week52High']),
      week52Low: serializer.fromJson<double>(json['week52Low']),
      ytdChange: serializer.fromJson<double>(json['ytdChange']),
      lastTradeTime: serializer.fromJson<DateTime>(json['lastTradeTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String>(name),
      'calculationPrice': serializer.toJson<String>(calculationPrice),
      'latestPrice': serializer.toJson<double>(latestPrice),
      'latestSource': serializer.toJson<String>(latestSource),
      'latestVolume': serializer.toJson<int>(latestVolume),
      'latestTime': serializer.toJson<DateTime>(latestTime),
      'open': serializer.toJson<double>(open),
      'openTime': serializer.toJson<DateTime>(openTime),
      'close': serializer.toJson<double>(close),
      'closeTime': serializer.toJson<DateTime>(closeTime),
      'high': serializer.toJson<double>(high),
      'highTime': serializer.toJson<DateTime>(highTime),
      'low': serializer.toJson<double>(low),
      'lowTime': serializer.toJson<DateTime>(lowTime),
      'extendedPrice': serializer.toJson<double>(extendedPrice),
      'extendedChange': serializer.toJson<double>(extendedChange),
      'extendedChangePercent': serializer.toJson<double>(extendedChangePercent),
      'extendedPriceTime': serializer.toJson<DateTime>(extendedPriceTime),
      'previousClose': serializer.toJson<double>(previousClose),
      'previousVolume': serializer.toJson<int>(previousVolume),
      'change': serializer.toJson<double>(change),
      'changePercent': serializer.toJson<double>(changePercent),
      'volume': serializer.toJson<int>(volume),
      'avgTotalVolume': serializer.toJson<int>(avgTotalVolume),
      'marketCap': serializer.toJson<int>(marketCap),
      'peRatio': serializer.toJson<double>(peRatio),
      'week52High': serializer.toJson<double>(week52High),
      'week52Low': serializer.toJson<double>(week52Low),
      'ytdChange': serializer.toJson<double>(ytdChange),
      'lastTradeTime': serializer.toJson<DateTime>(lastTradeTime),
    };
  }

  @override
  QuotesCompanion createCompanion(bool nullToAbsent) {
    return QuotesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      symbol:
          symbol == null && nullToAbsent ? const Value.absent() : Value(symbol),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      calculationPrice: calculationPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(calculationPrice),
      latestPrice: latestPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(latestPrice),
      latestSource: latestSource == null && nullToAbsent
          ? const Value.absent()
          : Value(latestSource),
      latestVolume: latestVolume == null && nullToAbsent
          ? const Value.absent()
          : Value(latestVolume),
      latestTime: latestTime == null && nullToAbsent
          ? const Value.absent()
          : Value(latestTime),
      open: open == null && nullToAbsent ? const Value.absent() : Value(open),
      openTime: openTime == null && nullToAbsent
          ? const Value.absent()
          : Value(openTime),
      close:
          close == null && nullToAbsent ? const Value.absent() : Value(close),
      closeTime: closeTime == null && nullToAbsent
          ? const Value.absent()
          : Value(closeTime),
      high: high == null && nullToAbsent ? const Value.absent() : Value(high),
      highTime: highTime == null && nullToAbsent
          ? const Value.absent()
          : Value(highTime),
      low: low == null && nullToAbsent ? const Value.absent() : Value(low),
      lowTime: lowTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lowTime),
      extendedPrice: extendedPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(extendedPrice),
      extendedChange: extendedChange == null && nullToAbsent
          ? const Value.absent()
          : Value(extendedChange),
      extendedChangePercent: extendedChangePercent == null && nullToAbsent
          ? const Value.absent()
          : Value(extendedChangePercent),
      extendedPriceTime: extendedPriceTime == null && nullToAbsent
          ? const Value.absent()
          : Value(extendedPriceTime),
      previousClose: previousClose == null && nullToAbsent
          ? const Value.absent()
          : Value(previousClose),
      previousVolume: previousVolume == null && nullToAbsent
          ? const Value.absent()
          : Value(previousVolume),
      change:
          change == null && nullToAbsent ? const Value.absent() : Value(change),
      changePercent: changePercent == null && nullToAbsent
          ? const Value.absent()
          : Value(changePercent),
      volume:
          volume == null && nullToAbsent ? const Value.absent() : Value(volume),
      avgTotalVolume: avgTotalVolume == null && nullToAbsent
          ? const Value.absent()
          : Value(avgTotalVolume),
      marketCap: marketCap == null && nullToAbsent
          ? const Value.absent()
          : Value(marketCap),
      peRatio: peRatio == null && nullToAbsent
          ? const Value.absent()
          : Value(peRatio),
      week52High: week52High == null && nullToAbsent
          ? const Value.absent()
          : Value(week52High),
      week52Low: week52Low == null && nullToAbsent
          ? const Value.absent()
          : Value(week52Low),
      ytdChange: ytdChange == null && nullToAbsent
          ? const Value.absent()
          : Value(ytdChange),
      lastTradeTime: lastTradeTime == null && nullToAbsent
          ? const Value.absent()
          : Value(lastTradeTime),
    );
  }

  Quote copyWith(
          {int id,
          String symbol,
          String name,
          String calculationPrice,
          double latestPrice,
          String latestSource,
          int latestVolume,
          DateTime latestTime,
          double open,
          DateTime openTime,
          double close,
          DateTime closeTime,
          double high,
          DateTime highTime,
          double low,
          DateTime lowTime,
          double extendedPrice,
          double extendedChange,
          double extendedChangePercent,
          DateTime extendedPriceTime,
          double previousClose,
          int previousVolume,
          double change,
          double changePercent,
          int volume,
          int avgTotalVolume,
          int marketCap,
          double peRatio,
          double week52High,
          double week52Low,
          double ytdChange,
          DateTime lastTradeTime}) =>
      Quote(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        name: name ?? this.name,
        calculationPrice: calculationPrice ?? this.calculationPrice,
        latestPrice: latestPrice ?? this.latestPrice,
        latestSource: latestSource ?? this.latestSource,
        latestVolume: latestVolume ?? this.latestVolume,
        latestTime: latestTime ?? this.latestTime,
        open: open ?? this.open,
        openTime: openTime ?? this.openTime,
        close: close ?? this.close,
        closeTime: closeTime ?? this.closeTime,
        high: high ?? this.high,
        highTime: highTime ?? this.highTime,
        low: low ?? this.low,
        lowTime: lowTime ?? this.lowTime,
        extendedPrice: extendedPrice ?? this.extendedPrice,
        extendedChange: extendedChange ?? this.extendedChange,
        extendedChangePercent:
            extendedChangePercent ?? this.extendedChangePercent,
        extendedPriceTime: extendedPriceTime ?? this.extendedPriceTime,
        previousClose: previousClose ?? this.previousClose,
        previousVolume: previousVolume ?? this.previousVolume,
        change: change ?? this.change,
        changePercent: changePercent ?? this.changePercent,
        volume: volume ?? this.volume,
        avgTotalVolume: avgTotalVolume ?? this.avgTotalVolume,
        marketCap: marketCap ?? this.marketCap,
        peRatio: peRatio ?? this.peRatio,
        week52High: week52High ?? this.week52High,
        week52Low: week52Low ?? this.week52Low,
        ytdChange: ytdChange ?? this.ytdChange,
        lastTradeTime: lastTradeTime ?? this.lastTradeTime,
      );
  @override
  String toString() {
    return (StringBuffer('Quote(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('calculationPrice: $calculationPrice, ')
          ..write('latestPrice: $latestPrice, ')
          ..write('latestSource: $latestSource, ')
          ..write('latestVolume: $latestVolume, ')
          ..write('latestTime: $latestTime, ')
          ..write('open: $open, ')
          ..write('openTime: $openTime, ')
          ..write('close: $close, ')
          ..write('closeTime: $closeTime, ')
          ..write('high: $high, ')
          ..write('highTime: $highTime, ')
          ..write('low: $low, ')
          ..write('lowTime: $lowTime, ')
          ..write('extendedPrice: $extendedPrice, ')
          ..write('extendedChange: $extendedChange, ')
          ..write('extendedChangePercent: $extendedChangePercent, ')
          ..write('extendedPriceTime: $extendedPriceTime, ')
          ..write('previousClose: $previousClose, ')
          ..write('previousVolume: $previousVolume, ')
          ..write('change: $change, ')
          ..write('changePercent: $changePercent, ')
          ..write('volume: $volume, ')
          ..write('avgTotalVolume: $avgTotalVolume, ')
          ..write('marketCap: $marketCap, ')
          ..write('peRatio: $peRatio, ')
          ..write('week52High: $week52High, ')
          ..write('week52Low: $week52Low, ')
          ..write('ytdChange: $ytdChange, ')
          ..write('lastTradeTime: $lastTradeTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          symbol.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  calculationPrice.hashCode,
                  $mrjc(
                      latestPrice.hashCode,
                      $mrjc(
                          latestSource.hashCode,
                          $mrjc(
                              latestVolume.hashCode,
                              $mrjc(
                                  latestTime.hashCode,
                                  $mrjc(
                                      open.hashCode,
                                      $mrjc(
                                          openTime.hashCode,
                                          $mrjc(
                                              close.hashCode,
                                              $mrjc(
                                                  closeTime.hashCode,
                                                  $mrjc(
                                                      high.hashCode,
                                                      $mrjc(
                                                          highTime.hashCode,
                                                          $mrjc(
                                                              low.hashCode,
                                                              $mrjc(
                                                                  lowTime
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      extendedPrice
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          extendedChange
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              extendedChangePercent.hashCode,
                                                                              $mrjc(extendedPriceTime.hashCode, $mrjc(previousClose.hashCode, $mrjc(previousVolume.hashCode, $mrjc(change.hashCode, $mrjc(changePercent.hashCode, $mrjc(volume.hashCode, $mrjc(avgTotalVolume.hashCode, $mrjc(marketCap.hashCode, $mrjc(peRatio.hashCode, $mrjc(week52High.hashCode, $mrjc(week52Low.hashCode, $mrjc(ytdChange.hashCode, lastTradeTime.hashCode))))))))))))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Quote &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.calculationPrice == this.calculationPrice &&
          other.latestPrice == this.latestPrice &&
          other.latestSource == this.latestSource &&
          other.latestVolume == this.latestVolume &&
          other.latestTime == this.latestTime &&
          other.open == this.open &&
          other.openTime == this.openTime &&
          other.close == this.close &&
          other.closeTime == this.closeTime &&
          other.high == this.high &&
          other.highTime == this.highTime &&
          other.low == this.low &&
          other.lowTime == this.lowTime &&
          other.extendedPrice == this.extendedPrice &&
          other.extendedChange == this.extendedChange &&
          other.extendedChangePercent == this.extendedChangePercent &&
          other.extendedPriceTime == this.extendedPriceTime &&
          other.previousClose == this.previousClose &&
          other.previousVolume == this.previousVolume &&
          other.change == this.change &&
          other.changePercent == this.changePercent &&
          other.volume == this.volume &&
          other.avgTotalVolume == this.avgTotalVolume &&
          other.marketCap == this.marketCap &&
          other.peRatio == this.peRatio &&
          other.week52High == this.week52High &&
          other.week52Low == this.week52Low &&
          other.ytdChange == this.ytdChange &&
          other.lastTradeTime == this.lastTradeTime);
}

class QuotesCompanion extends UpdateCompanion<Quote> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> name;
  final Value<String> calculationPrice;
  final Value<double> latestPrice;
  final Value<String> latestSource;
  final Value<int> latestVolume;
  final Value<DateTime> latestTime;
  final Value<double> open;
  final Value<DateTime> openTime;
  final Value<double> close;
  final Value<DateTime> closeTime;
  final Value<double> high;
  final Value<DateTime> highTime;
  final Value<double> low;
  final Value<DateTime> lowTime;
  final Value<double> extendedPrice;
  final Value<double> extendedChange;
  final Value<double> extendedChangePercent;
  final Value<DateTime> extendedPriceTime;
  final Value<double> previousClose;
  final Value<int> previousVolume;
  final Value<double> change;
  final Value<double> changePercent;
  final Value<int> volume;
  final Value<int> avgTotalVolume;
  final Value<int> marketCap;
  final Value<double> peRatio;
  final Value<double> week52High;
  final Value<double> week52Low;
  final Value<double> ytdChange;
  final Value<DateTime> lastTradeTime;
  const QuotesCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.name = const Value.absent(),
    this.calculationPrice = const Value.absent(),
    this.latestPrice = const Value.absent(),
    this.latestSource = const Value.absent(),
    this.latestVolume = const Value.absent(),
    this.latestTime = const Value.absent(),
    this.open = const Value.absent(),
    this.openTime = const Value.absent(),
    this.close = const Value.absent(),
    this.closeTime = const Value.absent(),
    this.high = const Value.absent(),
    this.highTime = const Value.absent(),
    this.low = const Value.absent(),
    this.lowTime = const Value.absent(),
    this.extendedPrice = const Value.absent(),
    this.extendedChange = const Value.absent(),
    this.extendedChangePercent = const Value.absent(),
    this.extendedPriceTime = const Value.absent(),
    this.previousClose = const Value.absent(),
    this.previousVolume = const Value.absent(),
    this.change = const Value.absent(),
    this.changePercent = const Value.absent(),
    this.volume = const Value.absent(),
    this.avgTotalVolume = const Value.absent(),
    this.marketCap = const Value.absent(),
    this.peRatio = const Value.absent(),
    this.week52High = const Value.absent(),
    this.week52Low = const Value.absent(),
    this.ytdChange = const Value.absent(),
    this.lastTradeTime = const Value.absent(),
  });
  QuotesCompanion.insert({
    this.id = const Value.absent(),
    @required String symbol,
    @required String name,
    this.calculationPrice = const Value.absent(),
    this.latestPrice = const Value.absent(),
    this.latestSource = const Value.absent(),
    this.latestVolume = const Value.absent(),
    this.latestTime = const Value.absent(),
    this.open = const Value.absent(),
    this.openTime = const Value.absent(),
    this.close = const Value.absent(),
    this.closeTime = const Value.absent(),
    this.high = const Value.absent(),
    this.highTime = const Value.absent(),
    this.low = const Value.absent(),
    this.lowTime = const Value.absent(),
    this.extendedPrice = const Value.absent(),
    this.extendedChange = const Value.absent(),
    this.extendedChangePercent = const Value.absent(),
    this.extendedPriceTime = const Value.absent(),
    this.previousClose = const Value.absent(),
    this.previousVolume = const Value.absent(),
    this.change = const Value.absent(),
    this.changePercent = const Value.absent(),
    this.volume = const Value.absent(),
    this.avgTotalVolume = const Value.absent(),
    this.marketCap = const Value.absent(),
    this.peRatio = const Value.absent(),
    this.week52High = const Value.absent(),
    this.week52Low = const Value.absent(),
    this.ytdChange = const Value.absent(),
    this.lastTradeTime = const Value.absent(),
  })  : symbol = Value(symbol),
        name = Value(name);
  QuotesCompanion copyWith(
      {Value<int> id,
      Value<String> symbol,
      Value<String> name,
      Value<String> calculationPrice,
      Value<double> latestPrice,
      Value<String> latestSource,
      Value<int> latestVolume,
      Value<DateTime> latestTime,
      Value<double> open,
      Value<DateTime> openTime,
      Value<double> close,
      Value<DateTime> closeTime,
      Value<double> high,
      Value<DateTime> highTime,
      Value<double> low,
      Value<DateTime> lowTime,
      Value<double> extendedPrice,
      Value<double> extendedChange,
      Value<double> extendedChangePercent,
      Value<DateTime> extendedPriceTime,
      Value<double> previousClose,
      Value<int> previousVolume,
      Value<double> change,
      Value<double> changePercent,
      Value<int> volume,
      Value<int> avgTotalVolume,
      Value<int> marketCap,
      Value<double> peRatio,
      Value<double> week52High,
      Value<double> week52Low,
      Value<double> ytdChange,
      Value<DateTime> lastTradeTime}) {
    return QuotesCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      calculationPrice: calculationPrice ?? this.calculationPrice,
      latestPrice: latestPrice ?? this.latestPrice,
      latestSource: latestSource ?? this.latestSource,
      latestVolume: latestVolume ?? this.latestVolume,
      latestTime: latestTime ?? this.latestTime,
      open: open ?? this.open,
      openTime: openTime ?? this.openTime,
      close: close ?? this.close,
      closeTime: closeTime ?? this.closeTime,
      high: high ?? this.high,
      highTime: highTime ?? this.highTime,
      low: low ?? this.low,
      lowTime: lowTime ?? this.lowTime,
      extendedPrice: extendedPrice ?? this.extendedPrice,
      extendedChange: extendedChange ?? this.extendedChange,
      extendedChangePercent:
          extendedChangePercent ?? this.extendedChangePercent,
      extendedPriceTime: extendedPriceTime ?? this.extendedPriceTime,
      previousClose: previousClose ?? this.previousClose,
      previousVolume: previousVolume ?? this.previousVolume,
      change: change ?? this.change,
      changePercent: changePercent ?? this.changePercent,
      volume: volume ?? this.volume,
      avgTotalVolume: avgTotalVolume ?? this.avgTotalVolume,
      marketCap: marketCap ?? this.marketCap,
      peRatio: peRatio ?? this.peRatio,
      week52High: week52High ?? this.week52High,
      week52Low: week52Low ?? this.week52Low,
      ytdChange: ytdChange ?? this.ytdChange,
      lastTradeTime: lastTradeTime ?? this.lastTradeTime,
    );
  }
}

class $QuotesTable extends Quotes with TableInfo<$QuotesTable, Quote> {
  final GeneratedDatabase _db;
  final String _alias;
  $QuotesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  GeneratedTextColumn _symbol;
  @override
  GeneratedTextColumn get symbol => _symbol ??= _constructSymbol();
  GeneratedTextColumn _constructSymbol() {
    return GeneratedTextColumn('symbol', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _calculationPriceMeta =
      const VerificationMeta('calculationPrice');
  GeneratedTextColumn _calculationPrice;
  @override
  GeneratedTextColumn get calculationPrice =>
      _calculationPrice ??= _constructCalculationPrice();
  GeneratedTextColumn _constructCalculationPrice() {
    return GeneratedTextColumn(
      'calculation_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _latestPriceMeta =
      const VerificationMeta('latestPrice');
  GeneratedRealColumn _latestPrice;
  @override
  GeneratedRealColumn get latestPrice =>
      _latestPrice ??= _constructLatestPrice();
  GeneratedRealColumn _constructLatestPrice() {
    return GeneratedRealColumn(
      'latest_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _latestSourceMeta =
      const VerificationMeta('latestSource');
  GeneratedTextColumn _latestSource;
  @override
  GeneratedTextColumn get latestSource =>
      _latestSource ??= _constructLatestSource();
  GeneratedTextColumn _constructLatestSource() {
    return GeneratedTextColumn(
      'latest_source',
      $tableName,
      true,
    );
  }

  final VerificationMeta _latestVolumeMeta =
      const VerificationMeta('latestVolume');
  GeneratedIntColumn _latestVolume;
  @override
  GeneratedIntColumn get latestVolume =>
      _latestVolume ??= _constructLatestVolume();
  GeneratedIntColumn _constructLatestVolume() {
    return GeneratedIntColumn(
      'latest_volume',
      $tableName,
      true,
    );
  }

  final VerificationMeta _latestTimeMeta = const VerificationMeta('latestTime');
  GeneratedDateTimeColumn _latestTime;
  @override
  GeneratedDateTimeColumn get latestTime =>
      _latestTime ??= _constructLatestTime();
  GeneratedDateTimeColumn _constructLatestTime() {
    return GeneratedDateTimeColumn(
      'latest_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _openMeta = const VerificationMeta('open');
  GeneratedRealColumn _open;
  @override
  GeneratedRealColumn get open => _open ??= _constructOpen();
  GeneratedRealColumn _constructOpen() {
    return GeneratedRealColumn(
      'open',
      $tableName,
      true,
    );
  }

  final VerificationMeta _openTimeMeta = const VerificationMeta('openTime');
  GeneratedDateTimeColumn _openTime;
  @override
  GeneratedDateTimeColumn get openTime => _openTime ??= _constructOpenTime();
  GeneratedDateTimeColumn _constructOpenTime() {
    return GeneratedDateTimeColumn(
      'open_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _closeMeta = const VerificationMeta('close');
  GeneratedRealColumn _close;
  @override
  GeneratedRealColumn get close => _close ??= _constructClose();
  GeneratedRealColumn _constructClose() {
    return GeneratedRealColumn(
      'close',
      $tableName,
      true,
    );
  }

  final VerificationMeta _closeTimeMeta = const VerificationMeta('closeTime');
  GeneratedDateTimeColumn _closeTime;
  @override
  GeneratedDateTimeColumn get closeTime => _closeTime ??= _constructCloseTime();
  GeneratedDateTimeColumn _constructCloseTime() {
    return GeneratedDateTimeColumn(
      'close_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _highMeta = const VerificationMeta('high');
  GeneratedRealColumn _high;
  @override
  GeneratedRealColumn get high => _high ??= _constructHigh();
  GeneratedRealColumn _constructHigh() {
    return GeneratedRealColumn(
      'high',
      $tableName,
      true,
    );
  }

  final VerificationMeta _highTimeMeta = const VerificationMeta('highTime');
  GeneratedDateTimeColumn _highTime;
  @override
  GeneratedDateTimeColumn get highTime => _highTime ??= _constructHighTime();
  GeneratedDateTimeColumn _constructHighTime() {
    return GeneratedDateTimeColumn(
      'high_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lowMeta = const VerificationMeta('low');
  GeneratedRealColumn _low;
  @override
  GeneratedRealColumn get low => _low ??= _constructLow();
  GeneratedRealColumn _constructLow() {
    return GeneratedRealColumn(
      'low',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lowTimeMeta = const VerificationMeta('lowTime');
  GeneratedDateTimeColumn _lowTime;
  @override
  GeneratedDateTimeColumn get lowTime => _lowTime ??= _constructLowTime();
  GeneratedDateTimeColumn _constructLowTime() {
    return GeneratedDateTimeColumn(
      'low_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _extendedPriceMeta =
      const VerificationMeta('extendedPrice');
  GeneratedRealColumn _extendedPrice;
  @override
  GeneratedRealColumn get extendedPrice =>
      _extendedPrice ??= _constructExtendedPrice();
  GeneratedRealColumn _constructExtendedPrice() {
    return GeneratedRealColumn(
      'extended_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _extendedChangeMeta =
      const VerificationMeta('extendedChange');
  GeneratedRealColumn _extendedChange;
  @override
  GeneratedRealColumn get extendedChange =>
      _extendedChange ??= _constructExtendedChange();
  GeneratedRealColumn _constructExtendedChange() {
    return GeneratedRealColumn(
      'extended_change',
      $tableName,
      true,
    );
  }

  final VerificationMeta _extendedChangePercentMeta =
      const VerificationMeta('extendedChangePercent');
  GeneratedRealColumn _extendedChangePercent;
  @override
  GeneratedRealColumn get extendedChangePercent =>
      _extendedChangePercent ??= _constructExtendedChangePercent();
  GeneratedRealColumn _constructExtendedChangePercent() {
    return GeneratedRealColumn(
      'extended_change_percent',
      $tableName,
      true,
    );
  }

  final VerificationMeta _extendedPriceTimeMeta =
      const VerificationMeta('extendedPriceTime');
  GeneratedDateTimeColumn _extendedPriceTime;
  @override
  GeneratedDateTimeColumn get extendedPriceTime =>
      _extendedPriceTime ??= _constructExtendedPriceTime();
  GeneratedDateTimeColumn _constructExtendedPriceTime() {
    return GeneratedDateTimeColumn(
      'extended_price_time',
      $tableName,
      true,
    );
  }

  final VerificationMeta _previousCloseMeta =
      const VerificationMeta('previousClose');
  GeneratedRealColumn _previousClose;
  @override
  GeneratedRealColumn get previousClose =>
      _previousClose ??= _constructPreviousClose();
  GeneratedRealColumn _constructPreviousClose() {
    return GeneratedRealColumn(
      'previous_close',
      $tableName,
      true,
    );
  }

  final VerificationMeta _previousVolumeMeta =
      const VerificationMeta('previousVolume');
  GeneratedIntColumn _previousVolume;
  @override
  GeneratedIntColumn get previousVolume =>
      _previousVolume ??= _constructPreviousVolume();
  GeneratedIntColumn _constructPreviousVolume() {
    return GeneratedIntColumn(
      'previous_volume',
      $tableName,
      true,
    );
  }

  final VerificationMeta _changeMeta = const VerificationMeta('change');
  GeneratedRealColumn _change;
  @override
  GeneratedRealColumn get change => _change ??= _constructChange();
  GeneratedRealColumn _constructChange() {
    return GeneratedRealColumn(
      'change',
      $tableName,
      true,
    );
  }

  final VerificationMeta _changePercentMeta =
      const VerificationMeta('changePercent');
  GeneratedRealColumn _changePercent;
  @override
  GeneratedRealColumn get changePercent =>
      _changePercent ??= _constructChangePercent();
  GeneratedRealColumn _constructChangePercent() {
    return GeneratedRealColumn(
      'change_percent',
      $tableName,
      true,
    );
  }

  final VerificationMeta _volumeMeta = const VerificationMeta('volume');
  GeneratedIntColumn _volume;
  @override
  GeneratedIntColumn get volume => _volume ??= _constructVolume();
  GeneratedIntColumn _constructVolume() {
    return GeneratedIntColumn(
      'volume',
      $tableName,
      true,
    );
  }

  final VerificationMeta _avgTotalVolumeMeta =
      const VerificationMeta('avgTotalVolume');
  GeneratedIntColumn _avgTotalVolume;
  @override
  GeneratedIntColumn get avgTotalVolume =>
      _avgTotalVolume ??= _constructAvgTotalVolume();
  GeneratedIntColumn _constructAvgTotalVolume() {
    return GeneratedIntColumn(
      'avg_total_volume',
      $tableName,
      true,
    );
  }

  final VerificationMeta _marketCapMeta = const VerificationMeta('marketCap');
  GeneratedIntColumn _marketCap;
  @override
  GeneratedIntColumn get marketCap => _marketCap ??= _constructMarketCap();
  GeneratedIntColumn _constructMarketCap() {
    return GeneratedIntColumn(
      'market_cap',
      $tableName,
      true,
    );
  }

  final VerificationMeta _peRatioMeta = const VerificationMeta('peRatio');
  GeneratedRealColumn _peRatio;
  @override
  GeneratedRealColumn get peRatio => _peRatio ??= _constructPeRatio();
  GeneratedRealColumn _constructPeRatio() {
    return GeneratedRealColumn(
      'pe_ratio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _week52HighMeta = const VerificationMeta('week52High');
  GeneratedRealColumn _week52High;
  @override
  GeneratedRealColumn get week52High => _week52High ??= _constructWeek52High();
  GeneratedRealColumn _constructWeek52High() {
    return GeneratedRealColumn(
      'week52_high',
      $tableName,
      true,
    );
  }

  final VerificationMeta _week52LowMeta = const VerificationMeta('week52Low');
  GeneratedRealColumn _week52Low;
  @override
  GeneratedRealColumn get week52Low => _week52Low ??= _constructWeek52Low();
  GeneratedRealColumn _constructWeek52Low() {
    return GeneratedRealColumn(
      'week52_low',
      $tableName,
      true,
    );
  }

  final VerificationMeta _ytdChangeMeta = const VerificationMeta('ytdChange');
  GeneratedRealColumn _ytdChange;
  @override
  GeneratedRealColumn get ytdChange => _ytdChange ??= _constructYtdChange();
  GeneratedRealColumn _constructYtdChange() {
    return GeneratedRealColumn(
      'ytd_change',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastTradeTimeMeta =
      const VerificationMeta('lastTradeTime');
  GeneratedDateTimeColumn _lastTradeTime;
  @override
  GeneratedDateTimeColumn get lastTradeTime =>
      _lastTradeTime ??= _constructLastTradeTime();
  GeneratedDateTimeColumn _constructLastTradeTime() {
    return GeneratedDateTimeColumn(
      'last_trade_time',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        symbol,
        name,
        calculationPrice,
        latestPrice,
        latestSource,
        latestVolume,
        latestTime,
        open,
        openTime,
        close,
        closeTime,
        high,
        highTime,
        low,
        lowTime,
        extendedPrice,
        extendedChange,
        extendedChangePercent,
        extendedPriceTime,
        previousClose,
        previousVolume,
        change,
        changePercent,
        volume,
        avgTotalVolume,
        marketCap,
        peRatio,
        week52High,
        week52Low,
        ytdChange,
        lastTradeTime
      ];
  @override
  $QuotesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'quotes';
  @override
  final String actualTableName = 'quotes';
  @override
  VerificationContext validateIntegrity(QuotesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.symbol.present) {
      context.handle(
          _symbolMeta, symbol.isAcceptableValue(d.symbol.value, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.calculationPrice.present) {
      context.handle(
          _calculationPriceMeta,
          calculationPrice.isAcceptableValue(
              d.calculationPrice.value, _calculationPriceMeta));
    }
    if (d.latestPrice.present) {
      context.handle(_latestPriceMeta,
          latestPrice.isAcceptableValue(d.latestPrice.value, _latestPriceMeta));
    }
    if (d.latestSource.present) {
      context.handle(
          _latestSourceMeta,
          latestSource.isAcceptableValue(
              d.latestSource.value, _latestSourceMeta));
    }
    if (d.latestVolume.present) {
      context.handle(
          _latestVolumeMeta,
          latestVolume.isAcceptableValue(
              d.latestVolume.value, _latestVolumeMeta));
    }
    if (d.latestTime.present) {
      context.handle(_latestTimeMeta,
          latestTime.isAcceptableValue(d.latestTime.value, _latestTimeMeta));
    }
    if (d.open.present) {
      context.handle(
          _openMeta, open.isAcceptableValue(d.open.value, _openMeta));
    }
    if (d.openTime.present) {
      context.handle(_openTimeMeta,
          openTime.isAcceptableValue(d.openTime.value, _openTimeMeta));
    }
    if (d.close.present) {
      context.handle(
          _closeMeta, close.isAcceptableValue(d.close.value, _closeMeta));
    }
    if (d.closeTime.present) {
      context.handle(_closeTimeMeta,
          closeTime.isAcceptableValue(d.closeTime.value, _closeTimeMeta));
    }
    if (d.high.present) {
      context.handle(
          _highMeta, high.isAcceptableValue(d.high.value, _highMeta));
    }
    if (d.highTime.present) {
      context.handle(_highTimeMeta,
          highTime.isAcceptableValue(d.highTime.value, _highTimeMeta));
    }
    if (d.low.present) {
      context.handle(_lowMeta, low.isAcceptableValue(d.low.value, _lowMeta));
    }
    if (d.lowTime.present) {
      context.handle(_lowTimeMeta,
          lowTime.isAcceptableValue(d.lowTime.value, _lowTimeMeta));
    }
    if (d.extendedPrice.present) {
      context.handle(
          _extendedPriceMeta,
          extendedPrice.isAcceptableValue(
              d.extendedPrice.value, _extendedPriceMeta));
    }
    if (d.extendedChange.present) {
      context.handle(
          _extendedChangeMeta,
          extendedChange.isAcceptableValue(
              d.extendedChange.value, _extendedChangeMeta));
    }
    if (d.extendedChangePercent.present) {
      context.handle(
          _extendedChangePercentMeta,
          extendedChangePercent.isAcceptableValue(
              d.extendedChangePercent.value, _extendedChangePercentMeta));
    }
    if (d.extendedPriceTime.present) {
      context.handle(
          _extendedPriceTimeMeta,
          extendedPriceTime.isAcceptableValue(
              d.extendedPriceTime.value, _extendedPriceTimeMeta));
    }
    if (d.previousClose.present) {
      context.handle(
          _previousCloseMeta,
          previousClose.isAcceptableValue(
              d.previousClose.value, _previousCloseMeta));
    }
    if (d.previousVolume.present) {
      context.handle(
          _previousVolumeMeta,
          previousVolume.isAcceptableValue(
              d.previousVolume.value, _previousVolumeMeta));
    }
    if (d.change.present) {
      context.handle(
          _changeMeta, change.isAcceptableValue(d.change.value, _changeMeta));
    }
    if (d.changePercent.present) {
      context.handle(
          _changePercentMeta,
          changePercent.isAcceptableValue(
              d.changePercent.value, _changePercentMeta));
    }
    if (d.volume.present) {
      context.handle(
          _volumeMeta, volume.isAcceptableValue(d.volume.value, _volumeMeta));
    }
    if (d.avgTotalVolume.present) {
      context.handle(
          _avgTotalVolumeMeta,
          avgTotalVolume.isAcceptableValue(
              d.avgTotalVolume.value, _avgTotalVolumeMeta));
    }
    if (d.marketCap.present) {
      context.handle(_marketCapMeta,
          marketCap.isAcceptableValue(d.marketCap.value, _marketCapMeta));
    }
    if (d.peRatio.present) {
      context.handle(_peRatioMeta,
          peRatio.isAcceptableValue(d.peRatio.value, _peRatioMeta));
    }
    if (d.week52High.present) {
      context.handle(_week52HighMeta,
          week52High.isAcceptableValue(d.week52High.value, _week52HighMeta));
    }
    if (d.week52Low.present) {
      context.handle(_week52LowMeta,
          week52Low.isAcceptableValue(d.week52Low.value, _week52LowMeta));
    }
    if (d.ytdChange.present) {
      context.handle(_ytdChangeMeta,
          ytdChange.isAcceptableValue(d.ytdChange.value, _ytdChangeMeta));
    }
    if (d.lastTradeTime.present) {
      context.handle(
          _lastTradeTimeMeta,
          lastTradeTime.isAcceptableValue(
              d.lastTradeTime.value, _lastTradeTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Quote map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Quote.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(QuotesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.symbol.present) {
      map['symbol'] = Variable<String, StringType>(d.symbol.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.calculationPrice.present) {
      map['calculation_price'] =
          Variable<String, StringType>(d.calculationPrice.value);
    }
    if (d.latestPrice.present) {
      map['latest_price'] = Variable<double, RealType>(d.latestPrice.value);
    }
    if (d.latestSource.present) {
      map['latest_source'] = Variable<String, StringType>(d.latestSource.value);
    }
    if (d.latestVolume.present) {
      map['latest_volume'] = Variable<int, IntType>(d.latestVolume.value);
    }
    if (d.latestTime.present) {
      map['latest_time'] = Variable<DateTime, DateTimeType>(d.latestTime.value);
    }
    if (d.open.present) {
      map['open'] = Variable<double, RealType>(d.open.value);
    }
    if (d.openTime.present) {
      map['open_time'] = Variable<DateTime, DateTimeType>(d.openTime.value);
    }
    if (d.close.present) {
      map['close'] = Variable<double, RealType>(d.close.value);
    }
    if (d.closeTime.present) {
      map['close_time'] = Variable<DateTime, DateTimeType>(d.closeTime.value);
    }
    if (d.high.present) {
      map['high'] = Variable<double, RealType>(d.high.value);
    }
    if (d.highTime.present) {
      map['high_time'] = Variable<DateTime, DateTimeType>(d.highTime.value);
    }
    if (d.low.present) {
      map['low'] = Variable<double, RealType>(d.low.value);
    }
    if (d.lowTime.present) {
      map['low_time'] = Variable<DateTime, DateTimeType>(d.lowTime.value);
    }
    if (d.extendedPrice.present) {
      map['extended_price'] = Variable<double, RealType>(d.extendedPrice.value);
    }
    if (d.extendedChange.present) {
      map['extended_change'] =
          Variable<double, RealType>(d.extendedChange.value);
    }
    if (d.extendedChangePercent.present) {
      map['extended_change_percent'] =
          Variable<double, RealType>(d.extendedChangePercent.value);
    }
    if (d.extendedPriceTime.present) {
      map['extended_price_time'] =
          Variable<DateTime, DateTimeType>(d.extendedPriceTime.value);
    }
    if (d.previousClose.present) {
      map['previous_close'] = Variable<double, RealType>(d.previousClose.value);
    }
    if (d.previousVolume.present) {
      map['previous_volume'] = Variable<int, IntType>(d.previousVolume.value);
    }
    if (d.change.present) {
      map['change'] = Variable<double, RealType>(d.change.value);
    }
    if (d.changePercent.present) {
      map['change_percent'] = Variable<double, RealType>(d.changePercent.value);
    }
    if (d.volume.present) {
      map['volume'] = Variable<int, IntType>(d.volume.value);
    }
    if (d.avgTotalVolume.present) {
      map['avg_total_volume'] = Variable<int, IntType>(d.avgTotalVolume.value);
    }
    if (d.marketCap.present) {
      map['market_cap'] = Variable<int, IntType>(d.marketCap.value);
    }
    if (d.peRatio.present) {
      map['pe_ratio'] = Variable<double, RealType>(d.peRatio.value);
    }
    if (d.week52High.present) {
      map['week52_high'] = Variable<double, RealType>(d.week52High.value);
    }
    if (d.week52Low.present) {
      map['week52_low'] = Variable<double, RealType>(d.week52Low.value);
    }
    if (d.ytdChange.present) {
      map['ytd_change'] = Variable<double, RealType>(d.ytdChange.value);
    }
    if (d.lastTradeTime.present) {
      map['last_trade_time'] =
          Variable<DateTime, DateTimeType>(d.lastTradeTime.value);
    }
    return map;
  }

  @override
  $QuotesTable createAlias(String alias) {
    return $QuotesTable(_db, alias);
  }
}

class Company extends DataClass implements Insertable<Company> {
  final int id;
  final String symbol;
  final String name;
  final String iexId;
  final DateTime date;
  final String type;
  final String region;
  final String currency;
  final bool isEnabled;
  final String figi;
  final String cik;
  Company(
      {@required this.id,
      @required this.symbol,
      @required this.name,
      @required this.iexId,
      @required this.date,
      @required this.type,
      this.region,
      this.currency,
      @required this.isEnabled,
      this.figi,
      this.cik});
  factory Company.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Company(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      symbol:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}symbol']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      iexId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}iex_id']),
      date:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      region:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}region']),
      currency: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}currency']),
      isEnabled: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_enabled']),
      figi: stringType.mapFromDatabaseResponse(data['${effectivePrefix}figi']),
      cik: stringType.mapFromDatabaseResponse(data['${effectivePrefix}cik']),
    );
  }
  factory Company.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Company(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String>(json['name']),
      iexId: serializer.fromJson<String>(json['iexId']),
      date: serializer.fromJson<DateTime>(json['date']),
      type: serializer.fromJson<String>(json['type']),
      region: serializer.fromJson<String>(json['region']),
      currency: serializer.fromJson<String>(json['currency']),
      isEnabled: serializer.fromJson<bool>(json['isEnabled']),
      figi: serializer.fromJson<String>(json['figi']),
      cik: serializer.fromJson<String>(json['cik']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String>(name),
      'iexId': serializer.toJson<String>(iexId),
      'date': serializer.toJson<DateTime>(date),
      'type': serializer.toJson<String>(type),
      'region': serializer.toJson<String>(region),
      'currency': serializer.toJson<String>(currency),
      'isEnabled': serializer.toJson<bool>(isEnabled),
      'figi': serializer.toJson<String>(figi),
      'cik': serializer.toJson<String>(cik),
    };
  }

  @override
  CompaniesCompanion createCompanion(bool nullToAbsent) {
    return CompaniesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      symbol:
          symbol == null && nullToAbsent ? const Value.absent() : Value(symbol),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      iexId:
          iexId == null && nullToAbsent ? const Value.absent() : Value(iexId),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      region:
          region == null && nullToAbsent ? const Value.absent() : Value(region),
      currency: currency == null && nullToAbsent
          ? const Value.absent()
          : Value(currency),
      isEnabled: isEnabled == null && nullToAbsent
          ? const Value.absent()
          : Value(isEnabled),
      figi: figi == null && nullToAbsent ? const Value.absent() : Value(figi),
      cik: cik == null && nullToAbsent ? const Value.absent() : Value(cik),
    );
  }

  Company copyWith(
          {int id,
          String symbol,
          String name,
          String iexId,
          DateTime date,
          String type,
          String region,
          String currency,
          bool isEnabled,
          String figi,
          String cik}) =>
      Company(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        name: name ?? this.name,
        iexId: iexId ?? this.iexId,
        date: date ?? this.date,
        type: type ?? this.type,
        region: region ?? this.region,
        currency: currency ?? this.currency,
        isEnabled: isEnabled ?? this.isEnabled,
        figi: figi ?? this.figi,
        cik: cik ?? this.cik,
      );
  @override
  String toString() {
    return (StringBuffer('Company(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('iexId: $iexId, ')
          ..write('date: $date, ')
          ..write('type: $type, ')
          ..write('region: $region, ')
          ..write('currency: $currency, ')
          ..write('isEnabled: $isEnabled, ')
          ..write('figi: $figi, ')
          ..write('cik: $cik')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          symbol.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  iexId.hashCode,
                  $mrjc(
                      date.hashCode,
                      $mrjc(
                          type.hashCode,
                          $mrjc(
                              region.hashCode,
                              $mrjc(
                                  currency.hashCode,
                                  $mrjc(
                                      isEnabled.hashCode,
                                      $mrjc(figi.hashCode,
                                          cik.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Company &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.iexId == this.iexId &&
          other.date == this.date &&
          other.type == this.type &&
          other.region == this.region &&
          other.currency == this.currency &&
          other.isEnabled == this.isEnabled &&
          other.figi == this.figi &&
          other.cik == this.cik);
}

class CompaniesCompanion extends UpdateCompanion<Company> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<String> name;
  final Value<String> iexId;
  final Value<DateTime> date;
  final Value<String> type;
  final Value<String> region;
  final Value<String> currency;
  final Value<bool> isEnabled;
  final Value<String> figi;
  final Value<String> cik;
  const CompaniesCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.name = const Value.absent(),
    this.iexId = const Value.absent(),
    this.date = const Value.absent(),
    this.type = const Value.absent(),
    this.region = const Value.absent(),
    this.currency = const Value.absent(),
    this.isEnabled = const Value.absent(),
    this.figi = const Value.absent(),
    this.cik = const Value.absent(),
  });
  CompaniesCompanion.insert({
    this.id = const Value.absent(),
    @required String symbol,
    @required String name,
    @required String iexId,
    @required DateTime date,
    @required String type,
    this.region = const Value.absent(),
    this.currency = const Value.absent(),
    @required bool isEnabled,
    this.figi = const Value.absent(),
    this.cik = const Value.absent(),
  })  : symbol = Value(symbol),
        name = Value(name),
        iexId = Value(iexId),
        date = Value(date),
        type = Value(type),
        isEnabled = Value(isEnabled);
  CompaniesCompanion copyWith(
      {Value<int> id,
      Value<String> symbol,
      Value<String> name,
      Value<String> iexId,
      Value<DateTime> date,
      Value<String> type,
      Value<String> region,
      Value<String> currency,
      Value<bool> isEnabled,
      Value<String> figi,
      Value<String> cik}) {
    return CompaniesCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      iexId: iexId ?? this.iexId,
      date: date ?? this.date,
      type: type ?? this.type,
      region: region ?? this.region,
      currency: currency ?? this.currency,
      isEnabled: isEnabled ?? this.isEnabled,
      figi: figi ?? this.figi,
      cik: cik ?? this.cik,
    );
  }
}

class $CompaniesTable extends Companies
    with TableInfo<$CompaniesTable, Company> {
  final GeneratedDatabase _db;
  final String _alias;
  $CompaniesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  GeneratedTextColumn _symbol;
  @override
  GeneratedTextColumn get symbol => _symbol ??= _constructSymbol();
  GeneratedTextColumn _constructSymbol() {
    return GeneratedTextColumn('symbol', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _iexIdMeta = const VerificationMeta('iexId');
  GeneratedTextColumn _iexId;
  @override
  GeneratedTextColumn get iexId => _iexId ??= _constructIexId();
  GeneratedTextColumn _constructIexId() {
    return GeneratedTextColumn('iex_id', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedDateTimeColumn _date;
  @override
  GeneratedDateTimeColumn get date => _date ??= _constructDate();
  GeneratedDateTimeColumn _constructDate() {
    return GeneratedDateTimeColumn(
      'date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn('type', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _regionMeta = const VerificationMeta('region');
  GeneratedTextColumn _region;
  @override
  GeneratedTextColumn get region => _region ??= _constructRegion();
  GeneratedTextColumn _constructRegion() {
    return GeneratedTextColumn('region', $tableName, true,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _currencyMeta = const VerificationMeta('currency');
  GeneratedTextColumn _currency;
  @override
  GeneratedTextColumn get currency => _currency ??= _constructCurrency();
  GeneratedTextColumn _constructCurrency() {
    return GeneratedTextColumn('currency', $tableName, true,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _isEnabledMeta = const VerificationMeta('isEnabled');
  GeneratedBoolColumn _isEnabled;
  @override
  GeneratedBoolColumn get isEnabled => _isEnabled ??= _constructIsEnabled();
  GeneratedBoolColumn _constructIsEnabled() {
    return GeneratedBoolColumn(
      'is_enabled',
      $tableName,
      false,
    );
  }

  final VerificationMeta _figiMeta = const VerificationMeta('figi');
  GeneratedTextColumn _figi;
  @override
  GeneratedTextColumn get figi => _figi ??= _constructFigi();
  GeneratedTextColumn _constructFigi() {
    return GeneratedTextColumn(
      'figi',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cikMeta = const VerificationMeta('cik');
  GeneratedTextColumn _cik;
  @override
  GeneratedTextColumn get cik => _cik ??= _constructCik();
  GeneratedTextColumn _constructCik() {
    return GeneratedTextColumn(
      'cik',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        symbol,
        name,
        iexId,
        date,
        type,
        region,
        currency,
        isEnabled,
        figi,
        cik
      ];
  @override
  $CompaniesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'companies';
  @override
  final String actualTableName = 'companies';
  @override
  VerificationContext validateIntegrity(CompaniesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.symbol.present) {
      context.handle(
          _symbolMeta, symbol.isAcceptableValue(d.symbol.value, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.iexId.present) {
      context.handle(
          _iexIdMeta, iexId.isAcceptableValue(d.iexId.value, _iexIdMeta));
    } else if (isInserting) {
      context.missing(_iexIdMeta);
    }
    if (d.date.present) {
      context.handle(
          _dateMeta, date.isAcceptableValue(d.date.value, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (d.type.present) {
      context.handle(
          _typeMeta, type.isAcceptableValue(d.type.value, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (d.region.present) {
      context.handle(
          _regionMeta, region.isAcceptableValue(d.region.value, _regionMeta));
    }
    if (d.currency.present) {
      context.handle(_currencyMeta,
          currency.isAcceptableValue(d.currency.value, _currencyMeta));
    }
    if (d.isEnabled.present) {
      context.handle(_isEnabledMeta,
          isEnabled.isAcceptableValue(d.isEnabled.value, _isEnabledMeta));
    } else if (isInserting) {
      context.missing(_isEnabledMeta);
    }
    if (d.figi.present) {
      context.handle(
          _figiMeta, figi.isAcceptableValue(d.figi.value, _figiMeta));
    }
    if (d.cik.present) {
      context.handle(_cikMeta, cik.isAcceptableValue(d.cik.value, _cikMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Company map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Company.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CompaniesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.symbol.present) {
      map['symbol'] = Variable<String, StringType>(d.symbol.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.iexId.present) {
      map['iex_id'] = Variable<String, StringType>(d.iexId.value);
    }
    if (d.date.present) {
      map['date'] = Variable<DateTime, DateTimeType>(d.date.value);
    }
    if (d.type.present) {
      map['type'] = Variable<String, StringType>(d.type.value);
    }
    if (d.region.present) {
      map['region'] = Variable<String, StringType>(d.region.value);
    }
    if (d.currency.present) {
      map['currency'] = Variable<String, StringType>(d.currency.value);
    }
    if (d.isEnabled.present) {
      map['is_enabled'] = Variable<bool, BoolType>(d.isEnabled.value);
    }
    if (d.figi.present) {
      map['figi'] = Variable<String, StringType>(d.figi.value);
    }
    if (d.cik.present) {
      map['cik'] = Variable<String, StringType>(d.cik.value);
    }
    return map;
  }

  @override
  $CompaniesTable createAlias(String alias) {
    return $CompaniesTable(_db, alias);
  }
}

class ChartEntry extends DataClass implements Insertable<ChartEntry> {
  final int id;
  final String symbol;
  final DateTime date;
  final double open;
  final double close;
  final double high;
  final double low;
  final int volume;
  final double uOpen;
  final double uClose;
  final double uHigh;
  final double uLow;
  final int uVolume;
  final double change;
  final double changePercent;
  final String label;
  final double changeOverTime;
  ChartEntry(
      {@required this.id,
      @required this.symbol,
      @required this.date,
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
      @required this.label,
      this.changeOverTime});
  factory ChartEntry.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final doubleType = db.typeSystem.forDartType<double>();
    return ChartEntry(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      symbol:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}symbol']),
      date:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      open: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}open']),
      close:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}close']),
      high: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}high']),
      low: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}low']),
      volume: intType.mapFromDatabaseResponse(data['${effectivePrefix}volume']),
      uOpen:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}u_open']),
      uClose:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}u_close']),
      uHigh:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}u_high']),
      uLow: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}u_low']),
      uVolume:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}u_volume']),
      change:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}change']),
      changePercent: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}change_percent']),
      label:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}label']),
      changeOverTime: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}change_over_time']),
    );
  }
  factory ChartEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ChartEntry(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      date: serializer.fromJson<DateTime>(json['date']),
      open: serializer.fromJson<double>(json['open']),
      close: serializer.fromJson<double>(json['close']),
      high: serializer.fromJson<double>(json['high']),
      low: serializer.fromJson<double>(json['low']),
      volume: serializer.fromJson<int>(json['volume']),
      uOpen: serializer.fromJson<double>(json['uOpen']),
      uClose: serializer.fromJson<double>(json['uClose']),
      uHigh: serializer.fromJson<double>(json['uHigh']),
      uLow: serializer.fromJson<double>(json['uLow']),
      uVolume: serializer.fromJson<int>(json['uVolume']),
      change: serializer.fromJson<double>(json['change']),
      changePercent: serializer.fromJson<double>(json['changePercent']),
      label: serializer.fromJson<String>(json['label']),
      changeOverTime: serializer.fromJson<double>(json['changeOverTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'date': serializer.toJson<DateTime>(date),
      'open': serializer.toJson<double>(open),
      'close': serializer.toJson<double>(close),
      'high': serializer.toJson<double>(high),
      'low': serializer.toJson<double>(low),
      'volume': serializer.toJson<int>(volume),
      'uOpen': serializer.toJson<double>(uOpen),
      'uClose': serializer.toJson<double>(uClose),
      'uHigh': serializer.toJson<double>(uHigh),
      'uLow': serializer.toJson<double>(uLow),
      'uVolume': serializer.toJson<int>(uVolume),
      'change': serializer.toJson<double>(change),
      'changePercent': serializer.toJson<double>(changePercent),
      'label': serializer.toJson<String>(label),
      'changeOverTime': serializer.toJson<double>(changeOverTime),
    };
  }

  @override
  ChartCompanion createCompanion(bool nullToAbsent) {
    return ChartCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      symbol:
          symbol == null && nullToAbsent ? const Value.absent() : Value(symbol),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      open: open == null && nullToAbsent ? const Value.absent() : Value(open),
      close:
          close == null && nullToAbsent ? const Value.absent() : Value(close),
      high: high == null && nullToAbsent ? const Value.absent() : Value(high),
      low: low == null && nullToAbsent ? const Value.absent() : Value(low),
      volume:
          volume == null && nullToAbsent ? const Value.absent() : Value(volume),
      uOpen:
          uOpen == null && nullToAbsent ? const Value.absent() : Value(uOpen),
      uClose:
          uClose == null && nullToAbsent ? const Value.absent() : Value(uClose),
      uHigh:
          uHigh == null && nullToAbsent ? const Value.absent() : Value(uHigh),
      uLow: uLow == null && nullToAbsent ? const Value.absent() : Value(uLow),
      uVolume: uVolume == null && nullToAbsent
          ? const Value.absent()
          : Value(uVolume),
      change:
          change == null && nullToAbsent ? const Value.absent() : Value(change),
      changePercent: changePercent == null && nullToAbsent
          ? const Value.absent()
          : Value(changePercent),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      changeOverTime: changeOverTime == null && nullToAbsent
          ? const Value.absent()
          : Value(changeOverTime),
    );
  }

  ChartEntry copyWith(
          {int id,
          String symbol,
          DateTime date,
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
          double changeOverTime}) =>
      ChartEntry(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        date: date ?? this.date,
        open: open ?? this.open,
        close: close ?? this.close,
        high: high ?? this.high,
        low: low ?? this.low,
        volume: volume ?? this.volume,
        uOpen: uOpen ?? this.uOpen,
        uClose: uClose ?? this.uClose,
        uHigh: uHigh ?? this.uHigh,
        uLow: uLow ?? this.uLow,
        uVolume: uVolume ?? this.uVolume,
        change: change ?? this.change,
        changePercent: changePercent ?? this.changePercent,
        label: label ?? this.label,
        changeOverTime: changeOverTime ?? this.changeOverTime,
      );
  @override
  String toString() {
    return (StringBuffer('ChartEntry(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('date: $date, ')
          ..write('open: $open, ')
          ..write('close: $close, ')
          ..write('high: $high, ')
          ..write('low: $low, ')
          ..write('volume: $volume, ')
          ..write('uOpen: $uOpen, ')
          ..write('uClose: $uClose, ')
          ..write('uHigh: $uHigh, ')
          ..write('uLow: $uLow, ')
          ..write('uVolume: $uVolume, ')
          ..write('change: $change, ')
          ..write('changePercent: $changePercent, ')
          ..write('label: $label, ')
          ..write('changeOverTime: $changeOverTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          symbol.hashCode,
          $mrjc(
              date.hashCode,
              $mrjc(
                  open.hashCode,
                  $mrjc(
                      close.hashCode,
                      $mrjc(
                          high.hashCode,
                          $mrjc(
                              low.hashCode,
                              $mrjc(
                                  volume.hashCode,
                                  $mrjc(
                                      uOpen.hashCode,
                                      $mrjc(
                                          uClose.hashCode,
                                          $mrjc(
                                              uHigh.hashCode,
                                              $mrjc(
                                                  uLow.hashCode,
                                                  $mrjc(
                                                      uVolume.hashCode,
                                                      $mrjc(
                                                          change.hashCode,
                                                          $mrjc(
                                                              changePercent
                                                                  .hashCode,
                                                              $mrjc(
                                                                  label
                                                                      .hashCode,
                                                                  changeOverTime
                                                                      .hashCode)))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ChartEntry &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.date == this.date &&
          other.open == this.open &&
          other.close == this.close &&
          other.high == this.high &&
          other.low == this.low &&
          other.volume == this.volume &&
          other.uOpen == this.uOpen &&
          other.uClose == this.uClose &&
          other.uHigh == this.uHigh &&
          other.uLow == this.uLow &&
          other.uVolume == this.uVolume &&
          other.change == this.change &&
          other.changePercent == this.changePercent &&
          other.label == this.label &&
          other.changeOverTime == this.changeOverTime);
}

class ChartCompanion extends UpdateCompanion<ChartEntry> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<DateTime> date;
  final Value<double> open;
  final Value<double> close;
  final Value<double> high;
  final Value<double> low;
  final Value<int> volume;
  final Value<double> uOpen;
  final Value<double> uClose;
  final Value<double> uHigh;
  final Value<double> uLow;
  final Value<int> uVolume;
  final Value<double> change;
  final Value<double> changePercent;
  final Value<String> label;
  final Value<double> changeOverTime;
  const ChartCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.date = const Value.absent(),
    this.open = const Value.absent(),
    this.close = const Value.absent(),
    this.high = const Value.absent(),
    this.low = const Value.absent(),
    this.volume = const Value.absent(),
    this.uOpen = const Value.absent(),
    this.uClose = const Value.absent(),
    this.uHigh = const Value.absent(),
    this.uLow = const Value.absent(),
    this.uVolume = const Value.absent(),
    this.change = const Value.absent(),
    this.changePercent = const Value.absent(),
    this.label = const Value.absent(),
    this.changeOverTime = const Value.absent(),
  });
  ChartCompanion.insert({
    this.id = const Value.absent(),
    @required String symbol,
    @required DateTime date,
    this.open = const Value.absent(),
    this.close = const Value.absent(),
    this.high = const Value.absent(),
    this.low = const Value.absent(),
    this.volume = const Value.absent(),
    this.uOpen = const Value.absent(),
    this.uClose = const Value.absent(),
    this.uHigh = const Value.absent(),
    this.uLow = const Value.absent(),
    this.uVolume = const Value.absent(),
    this.change = const Value.absent(),
    this.changePercent = const Value.absent(),
    @required String label,
    this.changeOverTime = const Value.absent(),
  })  : symbol = Value(symbol),
        date = Value(date),
        label = Value(label);
  ChartCompanion copyWith(
      {Value<int> id,
      Value<String> symbol,
      Value<DateTime> date,
      Value<double> open,
      Value<double> close,
      Value<double> high,
      Value<double> low,
      Value<int> volume,
      Value<double> uOpen,
      Value<double> uClose,
      Value<double> uHigh,
      Value<double> uLow,
      Value<int> uVolume,
      Value<double> change,
      Value<double> changePercent,
      Value<String> label,
      Value<double> changeOverTime}) {
    return ChartCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      date: date ?? this.date,
      open: open ?? this.open,
      close: close ?? this.close,
      high: high ?? this.high,
      low: low ?? this.low,
      volume: volume ?? this.volume,
      uOpen: uOpen ?? this.uOpen,
      uClose: uClose ?? this.uClose,
      uHigh: uHigh ?? this.uHigh,
      uLow: uLow ?? this.uLow,
      uVolume: uVolume ?? this.uVolume,
      change: change ?? this.change,
      changePercent: changePercent ?? this.changePercent,
      label: label ?? this.label,
      changeOverTime: changeOverTime ?? this.changeOverTime,
    );
  }
}

class $ChartTable extends Chart with TableInfo<$ChartTable, ChartEntry> {
  final GeneratedDatabase _db;
  final String _alias;
  $ChartTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  GeneratedTextColumn _symbol;
  @override
  GeneratedTextColumn get symbol => _symbol ??= _constructSymbol();
  GeneratedTextColumn _constructSymbol() {
    return GeneratedTextColumn('symbol', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedDateTimeColumn _date;
  @override
  GeneratedDateTimeColumn get date => _date ??= _constructDate();
  GeneratedDateTimeColumn _constructDate() {
    return GeneratedDateTimeColumn(
      'date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _openMeta = const VerificationMeta('open');
  GeneratedRealColumn _open;
  @override
  GeneratedRealColumn get open => _open ??= _constructOpen();
  GeneratedRealColumn _constructOpen() {
    return GeneratedRealColumn(
      'open',
      $tableName,
      true,
    );
  }

  final VerificationMeta _closeMeta = const VerificationMeta('close');
  GeneratedRealColumn _close;
  @override
  GeneratedRealColumn get close => _close ??= _constructClose();
  GeneratedRealColumn _constructClose() {
    return GeneratedRealColumn(
      'close',
      $tableName,
      true,
    );
  }

  final VerificationMeta _highMeta = const VerificationMeta('high');
  GeneratedRealColumn _high;
  @override
  GeneratedRealColumn get high => _high ??= _constructHigh();
  GeneratedRealColumn _constructHigh() {
    return GeneratedRealColumn(
      'high',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lowMeta = const VerificationMeta('low');
  GeneratedRealColumn _low;
  @override
  GeneratedRealColumn get low => _low ??= _constructLow();
  GeneratedRealColumn _constructLow() {
    return GeneratedRealColumn(
      'low',
      $tableName,
      true,
    );
  }

  final VerificationMeta _volumeMeta = const VerificationMeta('volume');
  GeneratedIntColumn _volume;
  @override
  GeneratedIntColumn get volume => _volume ??= _constructVolume();
  GeneratedIntColumn _constructVolume() {
    return GeneratedIntColumn(
      'volume',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uOpenMeta = const VerificationMeta('uOpen');
  GeneratedRealColumn _uOpen;
  @override
  GeneratedRealColumn get uOpen => _uOpen ??= _constructUOpen();
  GeneratedRealColumn _constructUOpen() {
    return GeneratedRealColumn(
      'u_open',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uCloseMeta = const VerificationMeta('uClose');
  GeneratedRealColumn _uClose;
  @override
  GeneratedRealColumn get uClose => _uClose ??= _constructUClose();
  GeneratedRealColumn _constructUClose() {
    return GeneratedRealColumn(
      'u_close',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uHighMeta = const VerificationMeta('uHigh');
  GeneratedRealColumn _uHigh;
  @override
  GeneratedRealColumn get uHigh => _uHigh ??= _constructUHigh();
  GeneratedRealColumn _constructUHigh() {
    return GeneratedRealColumn(
      'u_high',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uLowMeta = const VerificationMeta('uLow');
  GeneratedRealColumn _uLow;
  @override
  GeneratedRealColumn get uLow => _uLow ??= _constructULow();
  GeneratedRealColumn _constructULow() {
    return GeneratedRealColumn(
      'u_low',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uVolumeMeta = const VerificationMeta('uVolume');
  GeneratedIntColumn _uVolume;
  @override
  GeneratedIntColumn get uVolume => _uVolume ??= _constructUVolume();
  GeneratedIntColumn _constructUVolume() {
    return GeneratedIntColumn(
      'u_volume',
      $tableName,
      true,
    );
  }

  final VerificationMeta _changeMeta = const VerificationMeta('change');
  GeneratedRealColumn _change;
  @override
  GeneratedRealColumn get change => _change ??= _constructChange();
  GeneratedRealColumn _constructChange() {
    return GeneratedRealColumn(
      'change',
      $tableName,
      true,
    );
  }

  final VerificationMeta _changePercentMeta =
      const VerificationMeta('changePercent');
  GeneratedRealColumn _changePercent;
  @override
  GeneratedRealColumn get changePercent =>
      _changePercent ??= _constructChangePercent();
  GeneratedRealColumn _constructChangePercent() {
    return GeneratedRealColumn(
      'change_percent',
      $tableName,
      true,
    );
  }

  final VerificationMeta _labelMeta = const VerificationMeta('label');
  GeneratedTextColumn _label;
  @override
  GeneratedTextColumn get label => _label ??= _constructLabel();
  GeneratedTextColumn _constructLabel() {
    return GeneratedTextColumn('label', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _changeOverTimeMeta =
      const VerificationMeta('changeOverTime');
  GeneratedRealColumn _changeOverTime;
  @override
  GeneratedRealColumn get changeOverTime =>
      _changeOverTime ??= _constructChangeOverTime();
  GeneratedRealColumn _constructChangeOverTime() {
    return GeneratedRealColumn(
      'change_over_time',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        symbol,
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
        changeOverTime
      ];
  @override
  $ChartTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'chart';
  @override
  final String actualTableName = 'chart';
  @override
  VerificationContext validateIntegrity(ChartCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.symbol.present) {
      context.handle(
          _symbolMeta, symbol.isAcceptableValue(d.symbol.value, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (d.date.present) {
      context.handle(
          _dateMeta, date.isAcceptableValue(d.date.value, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (d.open.present) {
      context.handle(
          _openMeta, open.isAcceptableValue(d.open.value, _openMeta));
    }
    if (d.close.present) {
      context.handle(
          _closeMeta, close.isAcceptableValue(d.close.value, _closeMeta));
    }
    if (d.high.present) {
      context.handle(
          _highMeta, high.isAcceptableValue(d.high.value, _highMeta));
    }
    if (d.low.present) {
      context.handle(_lowMeta, low.isAcceptableValue(d.low.value, _lowMeta));
    }
    if (d.volume.present) {
      context.handle(
          _volumeMeta, volume.isAcceptableValue(d.volume.value, _volumeMeta));
    }
    if (d.uOpen.present) {
      context.handle(
          _uOpenMeta, uOpen.isAcceptableValue(d.uOpen.value, _uOpenMeta));
    }
    if (d.uClose.present) {
      context.handle(
          _uCloseMeta, uClose.isAcceptableValue(d.uClose.value, _uCloseMeta));
    }
    if (d.uHigh.present) {
      context.handle(
          _uHighMeta, uHigh.isAcceptableValue(d.uHigh.value, _uHighMeta));
    }
    if (d.uLow.present) {
      context.handle(
          _uLowMeta, uLow.isAcceptableValue(d.uLow.value, _uLowMeta));
    }
    if (d.uVolume.present) {
      context.handle(_uVolumeMeta,
          uVolume.isAcceptableValue(d.uVolume.value, _uVolumeMeta));
    }
    if (d.change.present) {
      context.handle(
          _changeMeta, change.isAcceptableValue(d.change.value, _changeMeta));
    }
    if (d.changePercent.present) {
      context.handle(
          _changePercentMeta,
          changePercent.isAcceptableValue(
              d.changePercent.value, _changePercentMeta));
    }
    if (d.label.present) {
      context.handle(
          _labelMeta, label.isAcceptableValue(d.label.value, _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (d.changeOverTime.present) {
      context.handle(
          _changeOverTimeMeta,
          changeOverTime.isAcceptableValue(
              d.changeOverTime.value, _changeOverTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChartEntry map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ChartEntry.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ChartCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.symbol.present) {
      map['symbol'] = Variable<String, StringType>(d.symbol.value);
    }
    if (d.date.present) {
      map['date'] = Variable<DateTime, DateTimeType>(d.date.value);
    }
    if (d.open.present) {
      map['open'] = Variable<double, RealType>(d.open.value);
    }
    if (d.close.present) {
      map['close'] = Variable<double, RealType>(d.close.value);
    }
    if (d.high.present) {
      map['high'] = Variable<double, RealType>(d.high.value);
    }
    if (d.low.present) {
      map['low'] = Variable<double, RealType>(d.low.value);
    }
    if (d.volume.present) {
      map['volume'] = Variable<int, IntType>(d.volume.value);
    }
    if (d.uOpen.present) {
      map['u_open'] = Variable<double, RealType>(d.uOpen.value);
    }
    if (d.uClose.present) {
      map['u_close'] = Variable<double, RealType>(d.uClose.value);
    }
    if (d.uHigh.present) {
      map['u_high'] = Variable<double, RealType>(d.uHigh.value);
    }
    if (d.uLow.present) {
      map['u_low'] = Variable<double, RealType>(d.uLow.value);
    }
    if (d.uVolume.present) {
      map['u_volume'] = Variable<int, IntType>(d.uVolume.value);
    }
    if (d.change.present) {
      map['change'] = Variable<double, RealType>(d.change.value);
    }
    if (d.changePercent.present) {
      map['change_percent'] = Variable<double, RealType>(d.changePercent.value);
    }
    if (d.label.present) {
      map['label'] = Variable<String, StringType>(d.label.value);
    }
    if (d.changeOverTime.present) {
      map['change_over_time'] =
          Variable<double, RealType>(d.changeOverTime.value);
    }
    return map;
  }

  @override
  $ChartTable createAlias(String alias) {
    return $ChartTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $PortfolioTable _portfolio;
  $PortfolioTable get portfolio => _portfolio ??= $PortfolioTable(this);
  $QuotesTable _quotes;
  $QuotesTable get quotes => _quotes ??= $QuotesTable(this);
  $CompaniesTable _companies;
  $CompaniesTable get companies => _companies ??= $CompaniesTable(this);
  $ChartTable _chart;
  $ChartTable get chart => _chart ??= $ChartTable(this);
  PortfolioDao _portfolioDao;
  PortfolioDao get portfolioDao =>
      _portfolioDao ??= PortfolioDao(this as AppDatabase);
  QuoteDao _quoteDao;
  QuoteDao get quoteDao => _quoteDao ??= QuoteDao(this as AppDatabase);
  CompanyDao _companyDao;
  CompanyDao get companyDao => _companyDao ??= CompanyDao(this as AppDatabase);
  ChartDao _chartDao;
  ChartDao get chartDao => _chartDao ??= ChartDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [portfolio, quotes, companies, chart];
}
