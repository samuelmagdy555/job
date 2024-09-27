
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../core/widgets/app_bar.dart';

class PDFScreen extends StatefulWidget {
  final String text;
  final File selectedCV;

  PDFScreen({Key? key, required this.text, required this.selectedCV}) : super(key: key);

  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {
late PdfViewerController _pdfViewerController;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pdfViewerController = PdfViewerController();

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(widget.text, context),
      body: SfPdfViewer.file(widget.selectedCV,
        controller: _pdfViewerController,
      ),
    );
  }
}