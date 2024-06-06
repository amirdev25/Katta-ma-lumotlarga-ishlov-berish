import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DetailPage extends StatefulWidget {
  final String themeName;
  final String pdfPath;

  const DetailPage({
    super.key,
    required this.themeName,
    required this.pdfPath,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.themeName),
      ),
      body: SfPdfViewer.asset(
        widget.pdfPath,
        key: _pdfViewerKey,
      ),
    );
  }
}
