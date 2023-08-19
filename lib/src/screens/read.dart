import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Reader extends StatefulWidget {
  Reader({super.key});

  @override
  State<Reader> createState() => _ReaderState();
}

class _ReaderState extends State<Reader> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  final PdfViewerController _controller = PdfViewerController();
  bool isSelected = false;
  bool isvertical = true;
  late PdfViewerController _pdfViewerController;
  late PdfTextSearchResult _searchResult;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    _searchResult = PdfTextSearchResult();
    super.initState;
    //load pdf here...
  }

  void toggleFavorite() {
    setState(() {
      if (isSelected == true) {
        isSelected = false;
      } else {
        isSelected = true;
      }
    });
  }

  void toogleDirection() {
    setState(() {
      if (isvertical == true) {
        isvertical = false;
      } else {
        isvertical = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.bookmark,
                    color: isSelected ? Colors.amber : Colors.black,
                    semanticLabel: 'Bookmark',
                  ),
                  onPressed: () {
                    //toggleFavorite();
                    _pdfViewerKey.currentState?.openBookmarkView();
                  },
                ),
                IconButton(
                    onPressed: () {
                      toogleDirection();
                    },
                    icon: isvertical
                        ? Icon(Icons.align_vertical_top)
                        : Icon(Icons.align_horizontal_left_sharp)),
              ]),
          body: SfPdfViewer.asset(
            'assets/pdf/tag.pdf',
            key: _pdfViewerKey,
            pageLayoutMode: isvertical
                ? PdfPageLayoutMode.continuous
                : PdfPageLayoutMode.single,
            // onTap: (details) {
            //   return showModalBottomSheet(context: context, builder: builder)
            // },

            controller: _controller,
            canShowScrollHead: true,
            canShowScrollStatus: true,
            canShowPaginationDialog: true,
          ),
        ));
  }
}
