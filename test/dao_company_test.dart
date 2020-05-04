import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:stocks/application/data/database/dao/company_dao.dart';
import 'package:stocks/application/data/database/database.dart';

void main() {

  group('_CompanyDao', (){
    AppDatabase _db;
    CompanyDao _dao;

    setUp(() async {
      _db = await AppDatabase(executor: VmDatabase.memory());
      _dao = CompanyDao(_db);
    });

    tearDown(() async {
      await _dao.cleanup();
      await _db.close();
    });

    test('add companies to database', () async {
      final company = CompanyTestData.company;
      final list = <Company>[
        company.copyWith(),
        company.copyWith(symbol: 'CTSO',name: "Cytosorb Inc"),
        company.copyWith(symbol: 'GOOG', name: "Alphabet Inc."),
        company.copyWith(symbol: 'AAPT', name: "Autonomous Airline Pilot Testing",),
      ];
      await _dao.add(list);

      var result = await _dao.select(_db.companies).get();
      expect(result.length,4);
    });

    test('search companies',() async {

      final company = CompanyTestData.company;
      final list = <Company>[
        company.copyWith(),
        company.copyWith(symbol: 'CTSO',name: "Cytosorb Inc"),
        company.copyWith(symbol: 'GOOG', name: "Alphabet Inc."),
        company.copyWith(symbol: 'AAPT', name: "Autonomous Airline Pilot Testing",),
      ];
      await _dao.add(list);

      final resultStream = _dao.searchResults.asBroadcastStream();

      var multiples = expectLater(
          resultStream.map((list)=>list.toSet().map((c)=>c.symbol)),
          emits({'AAPL','AAPT'})
      );

      await _dao.search('AA');
      await multiples;

      final single = expectLater(
        resultStream.map((list)=>list.toSet().map((c)=>c.symbol)),
        emits({'AAPL'}),
      );
      await _dao.search('AAPL');
      await single;

    });

    test('delete all companies',() async {
      final company = CompanyTestData.company;
      final list = <Company>[
        company.copyWith(),
        company.copyWith(symbol: 'CTSO',name: "Cytosorb Inc"),
        company.copyWith(symbol: 'GOOG', name: "Alphabet Inc."),
        company.copyWith(symbol: 'AAPT', name: "Autonomous Airline Pilot Testing",),
      ];
      await _dao.add(list);

      var populatedResult = await _dao.select(_db.companies).get();
      expect(populatedResult.length, 4);

      await _dao.removeAll();
      var emptyResult = await _dao.select(_db.companies).get();
      expect(emptyResult.length, 0);
    });

  });
  
}

class CompanyTestData {
  static Company get company =>
      Company(
        symbol: "AAPL",
        name: "APPLE INC",
        date: DateTime(2020,4,17),
        isEnabled: true,
        iexId: "11",
        type: "N/A",
        region: null,
        id: null,
        currency: null,
      );
}

