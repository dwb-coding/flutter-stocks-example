import 'package:moor_flutter/moor_flutter.dart';
import 'package:stocks/application/data/database/entity/chart_entity.dart';
import '../database.dart';

part 'chart_dao.g.dart';

@UseDao(tables: [Chart])
class ChartDao extends DatabaseAccessor<AppDatabase> with _$ChartDaoMixin {

  ChartDao( AppDatabase db) : super(db);

  Future save(List<DataPoint> entries) =>
      transaction(() async => await Future.forEach(
          entries, (entry) async => await into(chart).insert(entry))
      );//into(chart).insert(entry);

  Future<List<DataPoint>> getChartData(String symbol, DateTime start, DateTime end) =>
      (select(chart)..where((e) => e.symbol.equals(symbol) & e.date.isBetweenValues(start, end))).get();

}