import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('Quote')
class Quotes extends Table {
  String get tableName => 'quotes';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text().withLength(min:1,max:20)();
  TextColumn get name => text().withLength(min:1,max:100)();

  TextColumn get calculationPrice => text().nullable()();
  RealColumn get latestPrice => real().nullable()();
  TextColumn get latestSource => text().nullable()();
  IntColumn get latestVolume => integer().nullable()();
  DateTimeColumn get latestTime => dateTime().nullable()();

  RealColumn get open => real().nullable()();
  DateTimeColumn get openTime => dateTime().nullable()();
  RealColumn get close => real().nullable()();
  DateTimeColumn get closeTime => dateTime().nullable()();
  RealColumn get high => real().nullable()();
  DateTimeColumn get highTime => dateTime().nullable()();
  RealColumn get low => real().nullable()();
  DateTimeColumn get lowTime => dateTime().nullable()();

  RealColumn get extendedPrice => real().nullable()();
  RealColumn get extendedChange => real().nullable()();
  RealColumn get extendedChangePercent => real().nullable()();
  DateTimeColumn get extendedPriceTime => dateTime().nullable()();

  RealColumn get previousClose => real().nullable()();
  IntColumn get previousVolume => integer().nullable()();
  RealColumn get change => real().nullable()();
  RealColumn get changePercent => real().nullable()();

  IntColumn get volume => integer().nullable()();
  IntColumn get avgTotalVolume => integer().nullable()();
  IntColumn get marketCap => integer().nullable()();

  RealColumn get peRatio => real().nullable()();
  RealColumn get week52High => real().nullable()();
  RealColumn get week52Low => real().nullable()();
  RealColumn get ytdChange => real().nullable()();

  DateTimeColumn get lastTradeTime => dateTime().nullable()();
}