import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/entity/company_entity.dart';
import '../database.dart';

part 'company_dao.g.dart';

@UseDao(tables: [Companies])
class CompanyDao extends DatabaseAccessor<AppDatabase> with _$CompanyDaoMixin {
  final AppDatabase db;

  CompanyDao(this.db) : super(db);

  // 1. add company (add company during edit)
  // 2. remove company (delete company during edit)
  // 3. get list of companies (edit display)


  // observe company list and update as necessary
  Stream<List<Company>> search(String symbol) =>
      (db.select(companies)..where((company) => company.symbol.like('%$symbol%')))
      .watch();

//  Future updateCompanies(List<Company> companies) {
//    return transaction(() async {
//      companies.forEach((company) async => await db.into(companies).update(company));
////    await customUpdate(
////      'UPDATE companies SET '
////    )
////    db.into(companies).insert(stock);
//    });
//  }


  Future deleteCompany(Insertable<Company> company) => db.delete(companies).delete(company);

  Stream<List<Company>> watchAllStocks() => db.select(companies).watch();
}

class CompanyWithQuote {
  final Company company;
  final Quote quote;
  CompanyWithQuote({@required this.company, @required this.quote});
}