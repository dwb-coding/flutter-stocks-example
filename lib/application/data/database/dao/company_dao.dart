import 'dart:async';

import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/entity/company_entity.dart';
import '../database.dart';

part 'company_dao.g.dart';

@UseDao(tables: [Companies])
class CompanyDao extends DatabaseAccessor<AppDatabase> with _$CompanyDaoMixin {

  final _searchController = StreamController<List<Company>>();

  CompanyDao(AppDatabase db) : super(db);

  Future add(List<Company> list) =>
      transaction(() async {
        list.forEach((company) async {
          await into(companies).insert(company);
        });
      });

  // delete all companies
  Future removeAll() async => await delete(companies).go();

  Future search(String symbol) async {
      final query = select(companies)
        ..where((company) => company.symbol.like('%$symbol%'));
      final results = await query.get();
      _searchController.sink.add(results);
  }

  // search results are returned via this stream
  Stream<List<Company>> get searchResults => _searchController.stream;

  Future<void> cleanup() async {
    _searchController.close();
  }
}