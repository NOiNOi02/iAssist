import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:path/path.dart';
import 'package:sizer/sizer.dart';

class PDFViewerPage extends StatefulWidget {
  final File file;

  const PDFViewerPage({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  _PDFViewerPageState createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  late PDFViewController controller;
  int pages = 0;
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);
    final text = '${indexPage + 1} of $pages';

    return Scaffold(
      appBar: AppBar(
        title: Text(name, style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFBA494B),
                fontSize: 12.sp,)),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: IconButton(
          // alignment: center,
          icon: Icon(Icons.arrow_back_rounded,
          color: Color(0xFFBA494B)), 
          onPressed: () => Navigator.pop(context),
        ),
        actions: (pages >= 2)
            ? [
                Center(child: Text(text, style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFBA494B),
                fontSize: 12.sp,))),
                IconButton(
                  icon: Icon(Icons.chevron_left, color: Color(0xFFBA494B), size: 32),
                  onPressed: () {
                    final page = indexPage == 0 ? pages : indexPage - 1;
                    controller.setPage(page);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.chevron_right,color: Color(0xFFBA494B), size: 32),
                  onPressed: () {
                    final page = indexPage == pages - 1 ? 0 : indexPage + 1;
                    controller.setPage(page);
                  },
                ),
              ]
            : null,
      
      ),
      body: PDFView(
        filePath: widget.file.path,
        // autoSpacing: false,
        // swipeHorizontal: true,
        // pageSnap: false,
        // pageFling: false,
        onRender: (pages) => setState(() => this.pages = pages!),
        onViewCreated: (controller) =>
            setState(() => this.controller = controller),
        onPageChanged: (indexPage, _) =>
            setState(() => this.indexPage = indexPage!),
      ),
    );
  }
}