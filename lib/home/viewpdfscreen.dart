import 'dart:io';

import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
