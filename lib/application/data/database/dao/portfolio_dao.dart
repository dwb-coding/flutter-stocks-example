import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/entity/portfolio_entity.dart';
import 'package:stocks/application/data/database/entity/quote_entity.dart';

import '../database.dart';

part 'portfolio_dao.g.dart';

@UseDao(tables: [Portfolio])
class PortfolioDao extends DatabaseAccessor<AppDatabase> with _$PortfolioDaoMixin {
  final AppDatabase db;

  PortfolioDao(this.db) : super(db);

  Future insertGallery(Insertable<Stock> stock) =>
      into(portfolio).insert(stock);

  Future deleteGallery(Insertable<Stock> stock) =>
      delete(portfolio).delete(stock);

  Stream<List<Stock>> watchAllStocks() => select(portfolio).watch();
}

