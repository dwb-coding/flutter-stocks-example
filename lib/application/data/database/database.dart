import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/dao/company_dao.dart';
import 'package:stocks/application/data/database/dao/quote_dao.dart';
import 'package:stocks/application/data/database/dao/portfolio_dao.dart';
import 'package:stocks/application/data/database/entity/quote_entity.dart';
import 'package:stocks/application/data/database/entity/portfolio_entity.dart';

import 'entity/company_entity.dart';

part 'database.g.dart';

@UseMoor(tables: [Portfolio,Quotes,Companies], daos: [PortfolioDao,QuoteDao,CompanyDao])
class AppDatabase extends _$AppDatabase {

  AppDatabase({@required bool debug}): super(FlutterQueryExecutor.inDatabaseFolder(
    path: 'app.db',
    logStatements: debug,
  ));

  @override
  int get schemaVersion => 1;

}

