import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewPdfScreen extends StatefulWidget {
  final String pdfpath;
  const ViewPdfScreen({super.key, required this.pdfpath});

  @override
  State<ViewPdfScreen> createState() => _ViewPdfScreenState();
}

PDFDocument? doc;

class _ViewPdfScreenState extends State<ViewPdfScreen> {
  @override
  void initState() {
    convertit();
    super.initState();
  }

  static const MethodChannel _channel =
      MethodChannel('com.example.doc_scanner/response');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              var pdfPath =
                  await _channel.invokeMethod('sendResponse', widget.pdfpath);

              log('sampavam $pdfPath');
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('helloooo${pdfPath.toString()}')));
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: doc == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Expanded(
                  child: PDFViewer(
                    enableSwipeNavigation: true,
                    scrollDirection: Axis.vertical,
                    document: doc!,
                  ),
                ),
              ],
            ),
    );
  }

  convertit() async {
    doc = await PDFDocument.fromFile(
      File(widget.pdfpath),
    );
    setState(() {});
  }
}


// urllauncher()async{
// urllauncher()

// }