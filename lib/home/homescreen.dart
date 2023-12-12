import 'dart:developer';
import 'dart:io';
import 'package:doc_scanner/home/viewpdfscreen.dart';
import 'package:doc_scanner/state/bloc/imagescanned/imagescacnned_bloc.dart';
import 'package:flutter/material.dart';
import 'package:edge_detection/edge_detection.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pdf/widgets.dart' as pw;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ImagescacnnedBloc, ImagescacnnedState>(
          builder: (context, state) {
            return state.imagePath.isEmpty
                ? const Center(
                    child: Text('scan images'),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      state.imagePath.isNotEmpty
                          ? IconButton(
                              onPressed: () async {
                                var pdf = pw.Document();
                                for (var item in state.imagePath) {
                                  final image = pw.MemoryImage(
                                    File(item).readAsBytesSync(),
                                  );

                                  pdf.addPage(
                                    pw.Page(
                                      build: (pw.Context context) {
                                        return pw.Center(
                                          child: pw.Image(
                                            image,
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                }
                                String filepath = await savePdfFile(pdf);
                                await Clipboard.setData(
                                  ClipboardData(text: filepath),
                                );

                                Future.delayed(
                                    const Duration(microseconds: 100), () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ViewPdfScreen(pdfpath: filepath),
                                    ),
                                  );
                                });
                              },
                              icon: const Icon(
                                Icons.picture_as_pdf,
                              ),
                            )
                          : const SizedBox.shrink(),
                      Expanded(
                        child: GridView.builder(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: .7,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 3,
                          ),
                          itemCount: state.imagePath.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              // height: 200,
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: FileImage(
                                              File(
                                                state.imagePath[index],
                                              ),
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                title: const Text('Alert'),
                                                content: const Text(
                                                    'do you want to remove this Image'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text('no'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      context
                                                          .read<
                                                              ImagescacnnedBloc>()
                                                          .add(
                                                            DeleteimageEvent(
                                                              idx: index,
                                                              imgpath: state
                                                                      .imagePath[
                                                                  index],
                                                              imageslist: state
                                                                  .imagePath,
                                                            ),
                                                          );

                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text('yes'),
                                                  )
                                                ],
                                              ),
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String imgpath = await getImageFromCamera();
          log('image aan$imgpath');
          if (await File(imgpath).exists()) {
            // ignore: use_build_context_synchronously
            context.read<ImagescacnnedBloc>().add(
                  GetImagePathEvent(imagepath: imgpath),
                );
          }
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
        androidScanTitle: 'Scanning',
        androidCropTitle: 'Crop',
        androidCropBlackWhiteTitle: 'Black White',
        androidCropReset: 'Reset',
      );
      log("success: $success");

      return imagePath;
    } catch (e) {
      print('error aan $e ');
      return 'error';
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

    if (success) {
      // _imagePath = imagePath;
    }
  }

  Future<String> savePdfFile(pw.Document document) async {
    final directory = await getExternalStorageDirectory();
    const appName = 'doc_scanner';
    final appDirectory = Directory('${directory!.path}/$appName');

    // Create the app directory if it doesn't exist
    if (!await appDirectory.exists()) {
      await appDirectory.create();
    }

    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final fileName = 'document_$timestamp.pdf';

    final filePath = '${appDirectory.path}/$fileName';

    final file = File(filePath);
    await file.writeAsBytes(await document.save());

    print('PDF file saved at: $filePath');
    return filePath;
  }
}
