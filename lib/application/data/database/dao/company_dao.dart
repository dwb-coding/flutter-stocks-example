import 'dart:async';

import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/entity/company_entity.dart';
import '../database.dart';

part 'company_dao.g.dart';

@UseDao(tables: [Companies])
class CompanyDao extends DatabaseAccessor<AppDatabase> with _$CompanyDaoMixin {
  final AppDatabase db;
  final _searchController = StreamController<List<Company>>();

  CompanyDao(this.db) : super(db);

  Future add(List<Company> companyList) => transaction(() async {
    companyList.forEach((c) async {
      await into(companies).insert(c);
    });
  });

  // delete all companies
  Future removeAll() async => await delete(companies).go();

  void search(String symbol) =>
      (select(companies)..where((company) => company.symbol.like('%$symbol%'))
      ).watch().listen((List companies) => _searchController.sink.add(companies));

  // search results are returned via this stream
  Stream<List<Company>> get searchResults => _searchController.stream;

  Future<void> cleanup() async {
    _searchController.close();
  }
}