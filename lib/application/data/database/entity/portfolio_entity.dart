import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('Stock')
class Portfolio extends Table {
  String get tableName => 'portfolio';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text().withLength(min:1,max:20).customConstraint('UNIQUE')();
  TextColumn get name => text().withLength(min:1,max:100)();

}