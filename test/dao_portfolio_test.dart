import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:stocks/application/data/database/dao/portfolio_dao.dart';
import 'package:stocks/application/data/database/database.dart';

void main() {

  group('_PortfolioDao', () {
    AppDatabase _db;

    setUp(() async {
      _db = AppDatabase(executor: VmDatabase.memory());
    });

    tearDown(() async {
      await _db.close();
    });

    test('add stocks to portfolio', () async {
      final dao = PortfolioDao(_db);

      final list = <Stock>[
        Stock(symbol: "AAPL", name: "APPLE INC", id: null),
        Stock(symbol: 'CTSO',name: "Cytosorb Inc", id: null),
        Stock(symbol: 'GOOG', name: "Alphabet Inc.", id: null),
        Stock(symbol: 'AAPT', name: "Autonomous Airline Pilot Testing", id: null),
      ];

      // add stocks to database
      list.forEach((item) async => await dao.add(item));

      // query all stocks in database
      final portfolio = await dao.getPortfolio();

      expect(portfolio.length,4);
      expect(portfolio[0],list[0].copyWith(id: 1));
    });

    test('remove stocks from portfolio', () async {
      final dao = PortfolioDao(_db);

      final list = [
        Stock(symbol: "AAPL", name: "APPLE INC", id: null), 
        Stock(symbol: 'CTSO',name: "Cytosorb Inc", id: null),
      ];

      // add stocks to database
      list.forEach((item) async => await dao.add(item));
      expect((await dao.getPortfolio()).length,2);

      // remove single stock
      await dao.remove(list[1].symbol);
      final aaplPortfolio = await dao.getPortfolio();
      expect(aaplPortfolio.length,1);
      if(aaplPortfolio.length == 1) {
        expect(aaplPortfolio.first.symbol,'AAPL');
      }

      // add stock
      final lastStock = Stock(symbol: 'LST', name: 'Last Test Stock LLC', id: null);
      await dao.add(lastStock);
      expect((await dao.getPortfolio()).length,2);

      await dao.remove(list[0].symbol);
      final lastPortfolio = await dao.getPortfolio();
      expect(lastPortfolio.length,1);
      if(lastPortfolio.length == 1) {
        expect(lastPortfolio.first.symbol,lastStock.symbol);
      }

      await dao.remove(lastStock.symbol);
      expect((await dao.getPortfolio()).length,0);
    });

    test('watch portfolio', () async {
      final dao = PortfolioDao(_db);

      var emptyList = await dao.getPortfolio();
      expect(emptyList.length, 0);

      final list = [
        Stock(symbol: "AAPL", name: "APPLE INC", id: null),
        Stock(symbol: 'CTSO',name: "Cytosorb Inc", id: null),
      ];

      // using broadcast stream to support multiple listeners
      final watcher = dao.watchPortfolio().asBroadcastStream();

      // no stocks in portfolio... should emit empty list
      final noStocksExpected = expectLater(
        watcher.map((list)=>list.map((c)=>c.symbol)),
        emits(<String>[]),
      );
      await noStocksExpected;
      
      final afterAddingStocks = [list[0].copyWith(id: 1), list[1].copyWith(id: 2),];
      final twoStocksExpected = expectLater(
        watcher,
        emits(afterAddingStocks),
      );

      // add stocks to database
      list.forEach((item) async => await dao.add(item));
      await twoStocksExpected;

      final oneStock = [afterAddingStocks[0]];
      final oneStockExpected = expectLater(
        watcher,
        emits(oneStock),
      );

      await dao.remove(afterAddingStocks[1].symbol);
      await oneStockExpected;

      // no stocks in portfolio... should emit empty list
      final emptyAgainExpected = expectLater(
        watcher,
        emits(<Stock>[]),
      );
      await dao.remove(afterAddingStocks[0].symbol);
      await emptyAgainExpected;

    });

  });
}
