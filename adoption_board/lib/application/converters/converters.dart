import 'dart:typed_data';

class Converters {
  Uint8List convertStringToUint8List(String str) {
    final List<int> codeUnits = str.codeUnits;
    final Uint8List unit8List = Uint8List.fromList(codeUnits);

    return unit8List;
  }

  String convertUint8ListToString(Uint8List uint8list) {
    return String.fromCharCodes(uint8list);
  }

  Uint8List uint8ListFromList(List<int> data) {
    if (data is Uint8List) return data;

    return Uint8List.fromList(data);
  }

  Uint8List padUint8ListTo32(Uint8List data) {
    assert(data.length <= 32);
    if (data.length == 32) return data;

    // todo there must be a faster way to do this?
    return Uint8List(32)..setRange(32 - data.length, 32, data);
  }
}
