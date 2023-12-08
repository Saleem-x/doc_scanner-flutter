import 'dart:developer';
import 'dart:io';

import 'package:doc_scanner/state/bloc/imagescanned/imagescacnned_bloc.dart';
import 'package:flutter/material.dart';
import 'package:edge_detection/edge_detection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ImagescacnnedBloc, ImagescacnnedState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: state.when(
                      imageScannedState: (imgpath) {
                        return imgpath == null
                            ? const Center(
                                child: Text('scan doc'),
                              )
                            : Image.file(File(imgpath));
                      },
                      initial: () => Center(
                            child: Text('scan doc'),
                          )))
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String imgpath = await getImageFromCamera();

          log('image aan$imgpath');
          // ignore: use_build_context_synchronously
          context
              .read<ImagescacnnedBloc>()
              .add(GetImagePathEvent(imagepath: imgpath));
        },
        child: const Icon(
          Icons.scanner_outlined,
        ),
      ),
    );
  }

  Future<String> getImageFromCamera() async {
    bool isCameraGranted = await Permission.camera.request().isGranted;
    if (!isCameraGranted) {
      isCameraGranted =
          await Permission.camera.request() == PermissionStatus.granted;
    }

    if (!isCameraGranted) {
      // Have not permission to camera
      return '';
    }

    // Generate filepath for saving
    String imagePath = join((await getApplicationSupportDirectory()).path,
        "${(DateTime.now().millisecondsSinceEpoch / 1000).round()}.jpeg");

    bool success = false;
    print('imagepath $imagePath');
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
      print("success: $success");

      return imagePath;
    } catch (e) {
      print(e);
      return imagePath;
    }
  }

  Future<void> getImageFromGallery() async {
    // Generate filepath for saving
    String imagePath = join((await getApplicationSupportDirectory()).path,
        "${(DateTime.now().millisecondsSinceEpoch / 1000).round()}.jpeg");

    bool success = false;
    try {
      //Make sure to await the call to detectEdgeFromGallery.
      success = await EdgeDetection.detectEdgeFromGallery(
        imagePath,
        androidCropTitle: 'Crop', // use custom localizations for android
        androidCropBlackWhiteTitle: 'Black White',
        androidCropReset: 'Reset',
      );
      print("success: $success");
    } catch (e) {
      print(e);
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    if (success) {
      // _imagePath = imagePath;
    }
  }
}
