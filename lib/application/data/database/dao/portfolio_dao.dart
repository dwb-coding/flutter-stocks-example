import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/entity/portfolio_entity.dart';
import '../database.dart';

part 'portfolio_dao.g.dart';

@UseDao(tables: [Portfolio])
class PortfolioDao extends DatabaseAccessor<AppDatabase> with _$PortfolioDaoMixin {

  PortfolioDao(AppDatabase db) : super(db);

  Future add(Insertable<Stock> stock) => into(portfolio).insert(stock);

  Future remove(String symbol) => (delete(portfolio)..where((stock) => stock.symbol.like(symbol))).go();

  Future<List<Stock>> getPortfolio() => select(portfolio).get();

  Stream<List<Stock>> watchPortfolio() => select(portfolio).watch();
}

