import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('DataPoint')
class Chart extends Table {
  String get tableName => 'chart';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text().withLength(min:1,max:20)();
  DateTimeColumn get date => dateTime()();
  RealColumn get open => real().nullable()();
  RealColumn get close => real().nullable()();
  RealColumn get high => real().nullable()();
  RealColumn get low => real().nullable()();
  IntColumn get volume => integer().nullable()();
  RealColumn get uOpen => real().nullable()();
  RealColumn get uClose => real().nullable()();
  RealColumn get uHigh => real().nullable()();
  RealColumn get uLow => real().nullable()();
  IntColumn get uVolume => integer().nullable()();
  RealColumn get change => real().nullable()();
  RealColumn get changePercent => real().nullable()();
  TextColumn get label => text().withLength(min:1,max:20)();
  RealColumn get changeOverTime => real().nullable()();
}
