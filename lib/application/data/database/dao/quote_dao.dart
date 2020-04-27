import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/entity/portfolio_entity.dart';
import 'package:stocks/application/data/database/entity/quote_entity.dart';

import '../database.dart';

part 'quote_dao.g.dart';

@UseDao(tables: [Quotes,Portfolio])
class QuoteDao extends DatabaseAccessor<AppDatabase> with _$QuoteDaoMixin {
  final AppDatabase db;

  QuoteDao(this.db) : super(db);

  Future insertQuote(Insertable<Quote> stock) => db.into(quotes).insert(stock);

  Future deleteQuote(Insertable<Quote> stock) =>
      db.delete(quotes).delete(stock);

  Stream<List<Quote>> watchAllQuotes() => db.select(quotes).watch();


  Stream<List<StockWithQuote>> watchPortfolio() =>
      select(portfolio)
          .join(
          [leftOuterJoin(quotes, quotes.symbol.equalsExp(portfolio.symbol)),])
          .watch()
          .map((rows) =>
          rows.map((r) =>
              StockWithQuote(
                  stock: r.readTable(portfolio), quote: r.readTable(quotes))
          ).toList());

}

class StockWithQuote {
  final Stock stock;
  final Quote quote;
  StockWithQuote({@required this.stock, @required this.quote});
}