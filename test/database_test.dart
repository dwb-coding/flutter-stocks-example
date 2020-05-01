import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:stocks/application/data/database/dao/company_dao.dart';
import 'package:stocks/application/data/database/database.dart';

void main() {
  AppDatabase db;

  setUp(() {
    db = AppDatabase(executor: VmDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });


    test('company can be added', () async {
      var dao = CompanyDao(db);
      final list = <Company>[DatabaseTesting.company];
      await dao.add(list);

      var result = await dao.select(db.companies).get();
      expect(result.length,1);
    });



}

class DatabaseTesting {
  static Company get company =>
      Company(
        symbol: "AAPL",
        name: "APPLE INC",
        date: DateTime(2020,4,17),
        isEnabled: true,
        iexId: "11",
        type: "N/A",
        region: null,
        id: null,
        currency: null,
      );

}

