/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_ch_13_gen_q1_transforming_byte_btream_to_string_base.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

// TODO: Export any libraries intended for clients of this package.

// Future<List<int>> transformByteStream() async {
//   Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');

//   final client = http.Client();

//   List<int> chunkSizes = [];

//   try {
//     final request = http.Request('Get', url);
//     final response = await client.send(request);

//     await for (var chunk in response.stream.transform(utf8.decoder)) {
//       print('Chunk size is: ${chunk.length}');
//       chunkSizes.add(chunk.length);
//     }
//   } catch (e) {
//     print('An error occured: $e');
//   } finally {
//     client.close();
//     print('Cliend closed');
//   }
//   return chunkSizes;
// }

// Future<void> main() async {
//   transformByteStream();
// }

Future<List<int>> transformByteStream() async {
  final url = ('https://jsonplaceholder.typicode.com/todos/1');
  final urlAsUrl = Uri.parse(url);

  final response = Future(() => http.get(urlAsUrl));
  final responseAsStream = Stream.fromFuture(response);

  List<int> result = [];
  responseAsStream.listen((event) {
    print(event.contentLength);
    result.add(event.contentLength!);
  });
  return result;
}
