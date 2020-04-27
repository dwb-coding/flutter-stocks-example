
import 'dart:convert';
import 'package:chopper/chopper.dart';

/// To achieve a json-type converter appears to require
/// explicitly identifying supported types during converter init.
/// I had originally sought a GSONConverter (see Retrofit)
/// capability that just "works".  That doesn't appear possible at
/// this time.  Shelving this research for the time being.
class JsonTypeConverter extends JsonConverter {

  final Map<Type, Function> typeToFactoryMap;

  JsonTypeConverter(this.typeToFactoryMap);

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) =>
      response.copyWith(
          body: fromJsonData<BodyType, InnerType>(
              response.body, typeToFactoryMap[InnerType])
      );

  T fromJsonData<T, InnerType>(String source, Function converter) {
    final jsonObject = json.decode(source);

    if (jsonObject is List) {
      return jsonObject.map((element) =>
      converter(element as Map<String, dynamic>) as InnerType).toList() as T;
    }

    return converter(jsonObject);
  }
}
//  @override
//  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
//    Response r = super.convertResponse(response);
//    return response.copyWith(
//        body: _convertToObject(r)
//        //fromJsonData<BodyType, InnerType>(response.body, typeToFactoryMap[InnerType])
//    );
//  }
//
//  dynamic _convertToObject<InnerType>(dynamic element) {
//    if(element is InnerType) return element;
//
//    if(element is List) {
//      element.map((e) => Object<InnerType>().fromJson(e)  )
//    } else {
//
//    }
//  }
