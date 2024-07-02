// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image/image.dart' as img;
import 'package:http/http.dart' as http;
import 'package:blurhash_dart/blurhash_dart.dart';

Future<List<String>> convertImagePathsToBlurHash(
  BuildContext context,
  List<String> imagePaths,
) async {
  // Add your function code here!
  List<String> blurHashList = [];

  for (String imagePath in imagePaths) {
    try {
      http.Response response = await http.get(Uri.parse(imagePath));
      final rawImage = response.bodyBytes;
      final image = img.decodeImage(rawImage);

      if (image != null) {
        final blurHash = BlurHash.encode(image, numCompX: 4, numCompY: 3);
        blurHashList.add(blurHash.hash);
      } else {
        blurHashList.add(''); // or handle as needed if image decoding fails
      }
    } catch (e) {
      blurHashList.add(''); // or handle as needed if HTTP request fails
      print('Error fetching image: $e');
    }
  }

  return blurHashList;
}
