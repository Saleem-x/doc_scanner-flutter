/* import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:edge_detection/edge_detection.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image/image.dart' as img;

class ImageProcessingRepo {
  Future<String?> getImageFromCamera() async {
    String? finalimagePath;
    img.Image? grayscaleImage;
    bool isCameraGranted = await Permission.camera.request().isGranted;
    if (!isCameraGranted) {
      isCameraGranted =
          await Permission.camera.request() == PermissionStatus.granted;
    }

    if (!isCameraGranted) {
      // Have not permission to camera
      return null;
    }

    // Generate filepath for saving
    String imagePath = join((await getApplicationDocumentsDirectory()).path,
        "${(DateTime.now().millisecondsSinceEpoch / 1000).round()}.jpeg");
    bool success = false;

    try {
      //Make sure to await the call to detectEdge.
      success = await EdgeDetection.detectEdge(
        imagePath,
        canUseGallery: true,
        androidScanTitle: 'Scanning', // use custom localizations for android
        androidCropTitle: 'Crop',
        androidCropBlackWhiteTitle: 'Black White',
        androidCropReset: 'Reset',
      );
      List<int> bytes = await File(imagePath).readAsBytes();
      img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;

      // Convert the image to grayscale
      grayscaleImage = img.grayscale(image);
      print("success: $success $finalimagePath");
    } catch (e) {
      print(e);
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    // if (!mounted) return;

    if (success) {
      finalimagePath = imagePath;
      return finalimagePath;
    } else {
      return null;
    }
  }
}
 */