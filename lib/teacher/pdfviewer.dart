import 'package:flutter/material.dart';
// import 'package:advance_plugin_pdf_viewer/advance_plugin_pdf_viewer.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

class pdfviewer extends StatelessWidget {
  // late String filename;
  // pdfviewer({required this.filename});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url = "http://www.pdf995.com/samples/pdf.pdf";
  String pdfasset = "assets/pdf/firstlaw.pdf";
  late PDFDocument _doc;
  late bool _loading;

  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset(pdfasset);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'TEACHER MODE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFBA494B),
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        // backgroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.white,
        // elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_rounded, color: Color(0xFFBA494B)),
        //   onPressed: () => Navigator.pop(context),
        // ),
      ),
      // appBar: AppBar(
      //   title: Text("Flutter PDF Demo"),
      // ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(
              document: _doc,
              indicatorBackground: Colors.red,
              // showIndicator: false,
              // showPicker: false,
            ),
    );
  }
}
