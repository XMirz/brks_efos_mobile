import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:efosm/app/domain/entities/dropdown_item.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';

List<DropDownItem> buildDropDownItem(List<Parameter> items) {
  return items.map((e) {
    return DropDownItem(value: e.value.toString(), label: e.label ?? '');
  }).toList();
}

Color getStepBackgroundColor(int index, int activeIndex) {
  if (index < activeIndex) return AppColor.success;
  if (index == activeIndex) {
    return AppColor.success;
  } else {
    return AppColor.highlightSecondary;
  }
}

Color getStepIconColor(int index, int activeIndex) {
  if (index < activeIndex) return AppColor.success;
  if (index == activeIndex) return AppColor.success.withOpacity(0.4);
  return AppColor.highlight;
}

String getResizedBase64({required File image}) {
  var imgTemp = img.decodeImage(image.readAsBytesSync());
  if (imgTemp != null) {
    //  Resize sehingga tidak melebih 800 px
    int width;
    int height;
    if (imgTemp.width > imgTemp.height) {
      width = 800;
      height = (imgTemp.height / imgTemp.width * 800).round();
    } else {
      height = 800;
      width = (imgTemp.width / imgTemp.height * 800).round();
    }
    imgTemp = img.copyResize(imgTemp, width: width, height: height);
  }

  final imageBytes = img.encodeJpg(imgTemp!, quality: 85);
  return base64Encode(imageBytes);
}

Future<String> getResizedBase64Async({required File image}) async {
  return Isolate.run(() {
    var imgTemp = img.decodeImage(image.readAsBytesSync());
    if (imgTemp != null) {
      //  Resize sehingga tidak melebih 800 px
      int width;
      int height;
      if (imgTemp.width > imgTemp.height) {
        width = 800;
        height = (imgTemp.height / imgTemp.width * 800).round();
      } else {
        height = 800;
        width = (imgTemp.width / imgTemp.height * 800).round();
      }
      imgTemp = img.copyResize(imgTemp, width: width, height: height);
    }

    final imageBytes = img.encodeJpg(imgTemp!, quality: 85);
    return base64Encode(imageBytes);
  });
}

Future<File> uint8ListToFile({required Uint8List bytes}) async {
  final tempDir = await getTemporaryDirectory();
  return Isolate.run(() async {
    final time = DateTime.now();
    final file =
        await File('${tempDir.path}/${time.year}${time.month}${time.day}.${time.hour}${time.minute}${time.second}.png')
            .create();
    file.writeAsBytesSync(bytes);
    return file;
  });
}
