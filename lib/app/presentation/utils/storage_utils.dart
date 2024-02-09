import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

Future<XFile?> base64ToXFile(String base64Image) async {
  try {
    final List<int> bytes = base64Decode(base64Image);
    final tempDir = await getTemporaryDirectory();
    final tempPath = tempDir.path;
    final tempFile = File('$tempPath/image/img${DateTime.now()}.png');

    await tempFile.writeAsBytes(bytes);
    final xFile = XFile(tempFile.path);

    return xFile;
  } catch (e) {
    debugPrint('Error converting base64 to XFile: $e');
    return null;
  }
}
