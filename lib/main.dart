/* import 'package:doc_scanner/home/homescreen.dart';
import 'package:doc_scanner/state/bloc/imagescanned/imagescacnned_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ImagescacnnedBloc>(
          create: (context) => ImagescacnnedBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
 */

import 'dart:async';
import 'dart:io';
import 'package:edge_detection/edge_detection.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final directory = await getApplicationDocumentsDirectory();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _imagePath;

  @override
  void initState() {
    super.initState();
  }

  Future<void> getImageFromCamera() async {
    bool isCameraGranted = await Permission.camera.request().isGranted;
    if (!isCameraGranted) {
      isCameraGranted =
          await Permission.camera.request() == PermissionStatus.granted;
    }

    if (!isCameraGranted) {
      // Have not permission to camera
      return;
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
      print("success: $success $_imagePath");
    } catch (e) {
      print(e);
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      if (success) {
        _imagePath = imagePath;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Doc Scanner'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Visibility(
                visible: _imagePath != null,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.file(
                                File(_imagePath ?? ''),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: IconButton(
                                onPressed: () async {
                                  // bool persmission=await Permission./
                                  /*  try {
                                    Directory? extdir =
                                        await getExternalStorageDirectory();
                                    File file = File(
                                      path.join(
                                        extdir!.path,
                                        path.basename(_imagePath!),
                                      ),
                                    );

                                    await file.writeAsBytes(
                                        File(_imagePath!).readAsBytesSync());

                                    print('saved ${file.path}');
                                  } catch (e) {
                                    print('error $e');
                                  } */
                                  try {
                                    var permissionGranted =
                                        await Permission.storage.request();

                                    Directory appDocDirectory =
                                        await getApplicationDocumentsDirectory();

                                    Directory('${appDocDirectory.path}/dir')
                                        .create(recursive: true)
                                        .then((Directory directory) async {
                                      print(
                                          'Path of New Dir: ' + directory.path);
                                      final file = File('${directory.path}/');
                                      await file.writeAsBytes(
                                          await File(_imagePath!)
                                              .readAsBytes());
                                      print('saved loc ${file.path}');
                                    });
                                  } catch (e) {
                                    print('error aan $e');
                                  }
                                },
                                icon: const Icon(
                                  Icons.save,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Document Scanned Successfully',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
                visible: _imagePath == null,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'press the button \nfor Scanning document',
                      ),
                    ),
                  ],
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            getImageFromCamera();
          },
          child: const Icon(Icons.scanner),
        ),
      ),
    );
  }
}
