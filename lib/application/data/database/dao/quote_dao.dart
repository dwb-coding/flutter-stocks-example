import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/entity/portfolio_entity.dart';
import 'package:stocks/application/data/database/entity/quote_entity.dart';

import '../database.dart';

part 'quote_dao.g.dart';

@UseDao(tables: [Quotes,Portfolio])
class QuoteDao extends DatabaseAccessor<AppDatabase> with _$QuoteDaoMixin {

  QuoteDao(AppDatabase db) : super(db);

  Future save(List<Quote> list) =>
      transaction(() async {
        list.forEach((quote) async {
          await into(quotes).insert(quote, orReplace: true);
        });
      });

  // join query returns List<TypeResult>.  need to map to appropriate tables
  Stream<List<Quote>> watchPortfolioQuotes() =>
      select(portfolio)
          .join([leftOuterJoin(quotes, quotes.symbol.equalsExp(portfolio.symbol),useColumns: true),])
          .watch()
          .map((rows) => rows.map((row) => row.readTable(quotes)).toList());

  Stream<List<Quote>> watchAllQuotes() => db.select(quotes).watch();


}
//  Stream<List<Quote>> watchPortfolio() =>
//      select(portfolio)
//          .join(
//          [leftOuterJoin(quotes, quotes.symbol.equalsExp(portfolio.symbol)),])
//          .watch()
//          .map((rows) =>
//          rows.map((r) =>
//              StockWithQuote(
//                  stock: r.readTable(portfolio), quote: r.readTable(quotes))
//          ).toList());



//class StockWithQuote {
//  final Stock stock;
//  final Quote quote;
//  StockWithQuote({@required this.stock, @required this.quote});
//}