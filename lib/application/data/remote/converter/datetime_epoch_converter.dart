import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeEpochConverter implements JsonConverter<DateTime,int> {
  const DateTimeEpochConverter();

  @override
  @nullable DateTime fromJson(int json) =>
      (json != null) ? DateTime.fromMillisecondsSinceEpoch(json) : null;

  @override
  @nullable int toJson(DateTime time) => time?.millisecondsSinceEpoch;

}
