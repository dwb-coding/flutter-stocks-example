// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iex_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$IexApiService extends IexApiService {
  _$IexApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = IexApiService;

  @override
  Future<Response<dynamic>> getSymbols() {
    final $url = '/v1/ref-date/symbols';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchQuote(String symbol) {
    final $url = '/v1/stock/$symbol/quote';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchStocks(String symbols, String types) {
    final $url = '/v1/stock/market/batch?symbols={symbols}&types=quote,chart';
    final $params = <String, dynamic>{'symbols': symbols, 'types': types};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
