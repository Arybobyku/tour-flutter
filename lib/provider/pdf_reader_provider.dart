import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class PDFReaderProvider extends ChangeNotifier{

  bool isLoading = false;
  PDFDocument? document;

  Future<PDFDocument> readPdfReader(String url)async{
    try{
      isLoading = true;
      PDFDocument doc = await PDFDocument.fromURL(url);
      document = doc;
      isLoading = false;
      notifyListeners();
      return doc;
    }catch(e){
      print("[ERROR PDF READER] $e");
      rethrow;
    }
  }

}