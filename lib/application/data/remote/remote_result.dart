import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_result.freezed.dart';

@freezed
abstract class RemoteResult with _$RemoteResult{

  const factory RemoteResult.success(dynamic result) = Success;
  const factory RemoteResult.error(Error error) = Error;

}

// const factory StockState.stockListEmpty() = StockListEmpty;
//  const factory StockState.loading() = Loading;
//  const factory StockState.ready(Quote quote) = Ready;