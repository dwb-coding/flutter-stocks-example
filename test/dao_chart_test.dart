import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:stocks/application/data/database/dao/chart_dao.dart';
import 'package:stocks/application/data/database/database.dart';

void main() {

  group('_ChartDao', () {
    AppDatabase _db;

    setUp(() async {
      _db = AppDatabase(executor: VmDatabase.memory(logStatements: true));
    });

    tearDown(() async {
      await _db.close();
    });

    test('retrieve chart data points matching request',() async {

    });

    test('save chart data points', () async {
      final dao = ChartDao(_db);
      final chartTable = _db.chart;

      final entryTemplate = DataPoint(
        symbol: null,
        date: null,
        label: 'Dec 25ish',
        id: null,
      );

      // add stocks to database
      final list = <DataPoint>[
        entryTemplate.copyWith(symbol: 'AAPL', date: DateTime(2020,12,20), close: 8.24,),
        entryTemplate.copyWith(symbol: 'AAPL', date: DateTime(2020,12,21), close: 8.14,),
        entryTemplate.copyWith(symbol: 'AAPL', date: DateTime(2020,12,22), close: 8.04,),
        entryTemplate.copyWith(symbol: 'AAPL', date: DateTime(2020,12,23), close: 8.1,),
        entryTemplate.copyWith(symbol: 'AAPL', date: DateTime(2020,12,24), close: 8.2,),
        entryTemplate.copyWith(symbol: 'AAPL', date: DateTime(2020,12,25), close: 9.0,),
        entryTemplate.copyWith(symbol: 'GOOG', date: DateTime(2020,12,24), close: 200.0,),
        entryTemplate.copyWith(symbol: 'GOOG', date: DateTime(2020,12,25), close: 210.0,),
        entryTemplate.copyWith(symbol: 'GOOG', date: DateTime(2020,12,26), close: 209.0,),
        entryTemplate.copyWith(symbol: 'GOOG', date: DateTime(2020,12,27), close: 300.0,),
      ];
      await dao.save(list);

      final allSavedData = await dao.select(chartTable).get();
      expect(allSavedData.length,list.length);
      expect(allSavedData[0],list[0].copyWith(id:1));

    });

  });
}