import 'package:meta/meta.dart';
import 'package:stocks/application/data/remote/iex_api_service.dart';
import 'package:stocks/application/data/remote/iex_models.dart';
import 'package:stocks/application/data/remote/remote_result.dart';
import 'package:stocks/application/domain/models/stock.dart';

abstract class StockRepository {
  Future add(StockData stockData);
  Future<Quote> getQuote(String symbol);
  Future<Map<String,IexStock>> getStocks(List<String> symbols);
}

class StockRepositoryImpl implements StockRepository {
  final LocalStocksSource local;
  final RemoteStocksSource remote;

  StockRepositoryImpl({
    @required this.local, 
    @required this.remote
  });

  @override
  Future add(StockData stockData) async {
    await local.add(stockData);
  }

  @override
  Future<Quote> getQuote(String symbol) async {
    var result = await remote.fetchQuote(symbol);
    return result.map(
      error: (error) => null,
      success: (success) => success.result as Quote,
    );
  }

  Future<Map<String,IexStock>> getStocks(List<String> symbols) async {
    var remoteResult = await remote.fetchStockData(symbols);
    return remoteResult.map(
        error: (error) => <String,IexStock>{},
        success: (success) => success.result as Map<String,IexStock>
    );
  }

}

abstract class LocalStocksSource {
  Future add(StockData stockData);
}

class LocalStocksSourceImpl implements LocalStocksSource {
  @override
  Future add(StockData stock) async {}
}

abstract class RemoteStocksSource {
  Future<RemoteResult> fetchQuote(String symbol);
  Future<RemoteResult> fetchStockData(List<String> symbols);
}

class RemoteStocksSourceImpl implements RemoteStocksSource {
  final IexApiService stockService = IexApiService.create();

  @override
  Future<RemoteResult> fetchQuote(String symbol) async {
    var response = await stockService.fetchQuote(symbol);

    if(response.isSuccessful) {
      var quote = Quote.fromJson(response.body);
      return RemoteResult.success(quote);
    } else {
      return RemoteResult.error(response.error);
    }
  }

  @override
  Future<RemoteResult> fetchStockData(List<String> symbols) async {
    var types = 'quote';
    var response = await stockService.fetchStocks(symbols.join(","),types);
    if(response.isSuccessful) {
      var jsonMap = response.body as Map<String,dynamic>;
      Map<String,IexStock> result = jsonMap?.map((k, e) =>
          MapEntry(k, e == null ? null : IexStock.fromJson(e as Map<String, dynamic>)));
      return RemoteResult.success(result);
    } else {
      return RemoteResult.error(response.error);
    }
  }
  
}