import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PdfReaderPage extends StatefulWidget {
  const PdfReaderPage({Key? key}) : super(key: key);

  @override
  State<PdfReaderPage> createState() => _PdfReaderPageState();
}

class _PdfReaderPageState extends State<PdfReaderPage> {
  String url = Get.arguments;
  bool firstTime = true;
  late PDFDocument document;
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    if (firstTime) {
      readPdfReader();
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : PDFViewer(
                  document: document,
                ),
        ),
      ),
    );
  }

  readPdfReader() async {
    PDFDocument doc = await PDFDocument.fromURL(url);
    document = doc;
    isLoading = false;
    setState(() {});
  }
}
