import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stocks/application/data/bloc/bloc_delegate.dart';
import 'package:stocks/application/data/bloc/stock/bloc.dart';
import 'package:stocks/application/data/repository/stock_repository.dart';
import 'package:stocks/application/ui/pages/stocks_page.dart';
import 'package:logging/logging.dart';

import 'data/remote/mock_remote_source.dart';

void main() {
  _setupLogging();
  BlocSupervisor.delegate = SimpleBlocDelegate();  // consider supplying timber like debug
  runApp(MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec){
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stocks',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        canvasColor: Colors.black
      ),
      home: BlocProvider(
        create: (BuildContext context) => appStockBloc,
        child: SafeArea(
            child: StocksPage()
        ),
      ),
    );
  }
}

StockBloc get appStockBloc => StockBloc(
  stockRepository: StockRepositoryImpl(
      local: LocalStocksSourceImpl(),
      remote: MockRemoteStockSource() //RemoteStocksSourceImpl()
  )
);


