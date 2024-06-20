import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyPdfViewer extends StatefulWidget {
  const MyPdfViewer({super.key});

  @override
  State<MyPdfViewer> createState() => _MyPdfViewerState();
}

  class _MyPdfViewerState extends State<MyPdfViewer>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  centerTitle: true,
  title: const Text("Reading"),
  ),
  body: SfPdfViewer.asset("assets/book/book.pdf"),
  );
  }
  }
