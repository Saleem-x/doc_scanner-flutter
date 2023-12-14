import 'package:flutter/services.dart';

Future<void> sendPdfPathToJava(String pdfPath) async {
  MethodChannel channel = const MethodChannel('my_pdf_channel');
  try {
    await channel.invokeMethod('receivePdfPath', {'path': pdfPath});

    print('path send');
  } on PlatformException catch (e) {
    print('Error invoking method channel: ${e.message}');
  }
}
