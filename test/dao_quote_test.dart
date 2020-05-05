import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:stocks/application/data/database/dao/portfolio_dao.dart';
import 'package:stocks/application/data/database/dao/quote_dao.dart';
import 'package:stocks/application/data/database/database.dart';

void main() {

  group('_QuoteDao', (){
    AppDatabase _db;
    QuoteDao _dao;

    setUp(() async {
      _db = AppDatabase(executor: VmDatabase.memory(logStatements: false));
      _dao = QuoteDao(_db);
    });

    tearDown(() async {
      await _db.close();
    });

    test('save quote', () async {
      final quote = QuoteTestData.quote;
      final list = <Quote>[
        quote.copyWith(symbol: "CTSO", name: "CytoSorbents Corp.",),
        quote.copyWith(symbol: 'AAPL',name: "Apple, Inc.", latestVolume: 53657529, latestPrice: 282.8,),
        quote.copyWith(symbol: 'GOOG', name: "Alphabet Inc."),
        quote.copyWith(symbol: 'AAPT', name: "Autonomous Airline Pilot Testing",),
      ];
      await _dao.save(list);

      var result = await _dao.select(_db.quotes).get();
      expect(result.length,4);
    });

    test('watch quotes for portfolio',() async {
      var emptyList = await _dao.select(_db.quotes).get();
      expect(emptyList.length, 0);

      final quote = QuoteTestData.quote;
      final list = <Quote>[
        quote.copyWith(symbol: "CTSO", name: "CytoSorbents Corp.",),
        quote.copyWith(symbol: 'AAPL', name: "Apple, Inc.", latestVolume: 53657529, latestPrice: 282.8,),
        quote.copyWith(symbol: 'GOOG', name: "Alphabet Inc."),
        quote.copyWith(symbol: 'AAPT', name: "Autonomous Airline Pilot Testing",),
      ];
      await _dao.save(list);

      var withQuotes = await _dao.select(_db.quotes).get();
      expect(withQuotes.length, 4);

      final watcher = _dao.watchPortfolioQuotes().asBroadcastStream();

      // no stocks in portfolio... should emit empty list
      final noStocksExpected = expectLater(
        watcher.map((list)=>list.map((c)=>c.symbol)),
        emits(<String>[]),
      );
      await noStocksExpected;

      // add CTSO to portfolio
      final ctsoStock = Stock(symbol: list[0].symbol,name: list[0].name, id:null, );
      final portfolioDao = PortfolioDao(_db);
      await portfolioDao.into(_db.portfolio).insert(ctsoStock);

      List<Quote> expected = [list[0].copyWith(id: 1)];
      final oneStockExpected = expectLater(
        watcher,
        emits(expected),
      );

      // updating AAPL quote
      await _dao.save(<Quote>[list[1].copyWith(latestPrice: 200.0)]);
      await oneStockExpected;

      final twoStocksExpected = expectLater(
        watcher.map((list)=>list.map((c)=>c.symbol)),
        emits(<String>['CTSO','AAPL']),
      );

      // Adding AAPL stock into portfolio
      await portfolioDao.into(_db.portfolio).insert(Stock(id:null,symbol: list[1].symbol,name: list[1].name,));
      await twoStocksExpected;

    });

  });

}

class QuoteTestData {
  static Quote get quote =>
      Quote(
        symbol: "",
        name: "",
        primaryExchange: "NASDAQ",
        latestPrice: 8.55,
        latestVolume: 619839,
        latestUpdate: DateTime(2020,1,1,59),
        id: null,
      );
}