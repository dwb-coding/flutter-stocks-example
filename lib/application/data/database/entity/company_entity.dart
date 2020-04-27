import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('Company')
class Companies extends Table {
  String get tableName => 'companies';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text().withLength(min:1,max:20)();
  TextColumn get name => text().withLength(min:1,max:100)();
  TextColumn get iexId => text().withLength(min:1,max:100)();
  TextColumn get date => text().withLength(min:1,max:20)();
  TextColumn get type => text().withLength(min:1,max:20)();
  TextColumn get region => text().withLength(min:1,max:20)();
  TextColumn get currency => text().withLength(min:1,max:20)();
  BoolColumn get isEnabled => boolean()();
  TextColumn get figi => text().nullable()();
  TextColumn get cik => text().nullable()();

}