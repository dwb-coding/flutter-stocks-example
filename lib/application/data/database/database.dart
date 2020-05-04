import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/dao/company_dao.dart';
import 'package:stocks/application/data/database/dao/quote_dao.dart';
import 'package:stocks/application/data/database/dao/portfolio_dao.dart';
import 'package:stocks/application/data/database/entity/quote_entity.dart';
import 'package:stocks/application/data/database/entity/portfolio_entity.dart';
import 'dao/chart_dao.dart';
import 'entity/chart_entity.dart';
import 'entity/company_entity.dart';

part 'database.g.dart';

@UseMoor(tables: [Portfolio,Quotes,Companies,Chart], daos: [PortfolioDao,QuoteDao,CompanyDao,ChartDao])
class AppDatabase extends _$AppDatabase {

  AppDatabase({
    QueryExecutor executor,
    bool debug = false
  }) : super(executor ?? _queryExecutor(debug));

  @override
  int get schemaVersion => 1;

  static QueryExecutor _queryExecutor(bool debug) =>
      FlutterQueryExecutor.inDatabaseFolder(path: 'app.db', logStatements: debug,);
}

