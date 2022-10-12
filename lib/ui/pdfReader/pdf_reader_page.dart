import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfReaderPage extends StatefulWidget {
  const PdfReaderPage({Key? key}) : super(key: key);

  @override
  State<PdfReaderPage> createState() => _PdfReaderPageState();
}

class _PdfReaderPageState extends State<PdfReaderPage> {
  String url = Get.arguments;

  @override
  void initState() {
    disabledCapture();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SfPdfViewer.asset(
            url,
          ),
        ),
      ),
    );
  }

  disabledCapture()async{
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

}
