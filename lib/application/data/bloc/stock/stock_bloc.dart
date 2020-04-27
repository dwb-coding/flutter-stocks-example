import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:stocks/application/data/remote/iex_models.dart';
import 'package:stocks/application/data/repository/stock_repository.dart';
import 'bloc.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  final StockRepository stockRepository;

  StockBloc({@required this.stockRepository})
      : assert(stockRepository != null);

  @override
  StockState get initialState => StockListEmpty();

  @override
  Stream<StockState> mapEventToState(StockEvent event,) async* {
    yield Loading();
    var myStocks = <String>['CTSO','AAPL','GOOG','F','MSFT','GE','BAC','OXY'];
    final stockList = <IexStock>[];
    var map = await stockRepository.getStocks(myStocks);
    myStocks.forEach((symbol)=> stockList.add(map[symbol]));
    yield Ready(stockList);
  }
}
