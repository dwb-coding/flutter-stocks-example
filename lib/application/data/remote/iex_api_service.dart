import 'package:chopper/chopper.dart';
import 'package:stocks/application/data/remote/interceptors/token_interceptor.dart';

part 'iex_api_service.chopper.dart';

@ChopperApi(baseUrl: '/v1')
abstract class IexApiService extends ChopperService {

  // https://cloud.iexapis.com/v1/ref-data/symbols?token=
  @Get(path: '/ref-date/symbols')
  Future<Response> getSymbols();

  @Get(path: '/stock/{symbol}/quote')
  Future<Response> fetchQuote(@Path('symbol') String symbol);

  @Get(path: '/stock/market/batch?symbols={symbols}&types=quote,chart')
  Future<Response> fetchStocks(@Query('symbols') String symbols, @Query('types') String types);

//  @Get(path: '/stock/tbd?token=pk_22d9f9881c16460a96393135e60abc3c')
//  Future<Response> lookupSymbol(String symbol);

  static IexApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://cloud.iexapis.com',
      services: [ _$IexApiService() ],
      converter: JsonConverter(),
      interceptors: [
        TokenInterceptor(token: '< token_for_iex_api >'),
        HttpLoggingInterceptor(),
      ],
    );
    return _$IexApiService(client);
  }
}