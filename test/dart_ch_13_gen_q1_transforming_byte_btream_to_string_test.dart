import 'package:dart_ch_13_gen_q1_transforming_byte_btream_to_string/dart_ch_13_gen_q1_transforming_byte_btream_to_string.dart';
import 'package:test/test.dart';
void main() {
  group('Transforming Byte Stream Tests', () {
    test('Transforms stream from bytes to strings and prints chunk sizes', () async {
      expect(await transformByteStream(), isA<List<int>>()); // Expect a list of chunk sizes
    });
 
    test('Closes client after stream completion', () {
      // This test should check if the client is closed properly after the operation
      // The specific implementation depends on how you manage the client's state
    });
  });
}