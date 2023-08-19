// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String pathPDF = "ppp";
//   String landscapePathPdf = "";
//   String remotePDFpath = "";
//   String corruptedPathPDF = "";

//   @override
//   void initState() {
//     super.initState();
//     fromAsset('assets/pdf/Distributed.pdf', 'Distributed.pdf').then((f) {
//       setState(() {
//         corruptedPathPDF = f.path;
//       });
//     });
//     fromAsset('assets/pdf/tag.pdf', 'tag.pdf').then((f) {
//       setState(() {
//         pathPDF = f.path;
//       });
//     });
//     fromAsset('assets/pdf/Distributed.pdf', 'Distributed.pdf').then((f) {
//       setState(() {
//         landscapePathPdf = f.path;
//       });
//     });
//   }

//   Future<File> fromAsset(String asset, String filename) async {
//     // To open from assets, you can copy them to the app storage folder, and the access them "locally"
//     Completer<File> completer = Completer();

//     try {
//       var dir = await getApplicationDocumentsDirectory();
//       File file = File("${dir.path}/$filename");
//       var data = await rootBundle.load(asset);
//       var bytes = data.buffer.asUint8List();
//       await file.writeAsBytes(bytes, flush: true);
//       completer.complete(file);
//     } catch (e) {
//       throw Exception('Error parsing asset file!');
//     }

//     return completer.future;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Plugin example app')),
//       body: Center(child: Builder(
//         builder: (BuildContext context) {
//           return Column(
//             children: <Widget>[
//               TextButton(
//                 child: Text("Open PDF"),
//                 onPressed: () {
//                   if (pathPDF.isNotEmpty) {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => PDFScreen(path: pathPDF),
//                       ),
//                     );
//                   } else {
//                     print('o');
//                   }
//                 },
//               ),
//               // TextButton(
//               //   child: Text("Open Landscape PDF"),
//               //   onPressed: () {
//               //     if (landscapePathPdf.isNotEmpty) {
//               //       Navigator.push(
//               //         context,
//               //         MaterialPageRoute(
//               //           builder: (context) => PDFScreen(path: landscapePathPdf),
//               //         ),
//               //       );
//               //     }
//               //   },
//               // ),
//               // TextButton(
//               //   child: Text("Remote PDF"),
//               //   onPressed: () {
//               //     if (remotePDFpath.isNotEmpty) {
//               //       Navigator.push(
//               //         context,
//               //         MaterialPageRoute(
//               //           builder: (context) => PDFScreen(path: remotePDFpath),
//               //         ),
//               //       );
//               //     }
//               //   },
//               // ),
//               // TextButton(
//               //   child: Text("Open Corrupted PDF"),
//               //   onPressed: () {
//               //     if (pathPDF.isNotEmpty) {
//               //       Navigator.push(
//               //         context,
//               //         MaterialPageRoute(
//               //           builder: (context) => PDFScreen(path: corruptedPathPDF),
//               //         ),
//               //       );
//               //     }
//               //   },
//               // )
//             ],
//           );
//         },
//       )),
//     );
//   }
// }

// class PDFScreen extends StatefulWidget {
//   final String? path;

//   PDFScreen({Key? key, this.path}) : super(key: key);

//   _PDFScreenState createState() => _PDFScreenState();
// }

// class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {
//   String pathPDF = "ppp";
//   String landscapePathPdf = "";
//   String remotePDFpath = "";
//   String corruptedPathPDF = "";

//   @override
//   void initState() {
//     super.initState();
//     fromAsset('assets/pdf/Distributed.pdf', 'Distributed.pdf').then((f) {
//       setState(() {
//         corruptedPathPDF = f.path;
//       });
//     });
//     fromAsset('assets/pdf/tag.pdf', 'tag.pdf').then((f) {
//       setState(() {
//         pathPDF = f.path;
//       });
//     });
//     fromAsset('assets/pdf/Distributed.pdf', 'Distributed.pdf').then((f) {
//       setState(() {
//         landscapePathPdf = f.path;
//       });
//     });
//   }

//   Future<File> fromAsset(String asset, String filename) async {
//     // To open from assets, you can copy them to the app storage folder, and the access them "locally"
//     Completer<File> completer = Completer();

//     try {
//       var dir = await getApplicationDocumentsDirectory();
//       File file = File("${dir.path}/$filename");
//       var data = await rootBundle.load(asset);
//       var bytes = data.buffer.asUint8List();
//       await file.writeAsBytes(bytes, flush: true);
//       completer.complete(file);
//     } catch (e) {
//       throw Exception('Error parsing asset file!');
//     }

//     return completer.future;
//   }

//   final Completer<PDFViewController> _controller =
//       Completer<PDFViewController>();
//   int? pages = 0;
//   int? currentPage = 0;
//   bool isReady = false;
//   String errorMessage = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Document"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.share),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       backgroundColor: Colors.red,
//       body: Stack(
//         children: <Widget>[
//           PDFView(
//             filePath: widget.path,
//             enableSwipe: true,
//             swipeHorizontal: true,
//             autoSpacing: false,
//             pageFling: true,
//             pageSnap: true,
//             defaultPage: currentPage!,
//             fitPolicy: FitPolicy.BOTH,
//             preventLinkNavigation:
//                 false, // if set to true the link is handled in flutter
//             onRender: (_pages) {
//               setState(() {
//                 pages = _pages;
//                 isReady = true;
//               });
//             },
//             onError: (error) {
//               setState(() {
//                 errorMessage = error.toString();
//               });
//               print(error.toString());
//             },
//             onPageError: (page, error) {
//               setState(() {
//                 errorMessage = '$page: ${error.toString()}';
//               });
//               print('$page: ${error.toString()}');
//             },
//             onViewCreated: (PDFViewController pdfViewController) {
//               _controller.complete(pdfViewController);
//             },
//             onLinkHandler: (String? uri) {
//               print('goto uri: $uri');
//             },
//             onPageChanged: (int? page, int? total) {
//               print('page change: $page/$total');
//               setState(() {
//                 currentPage = page;
//               });
//             },
//           ),
//           errorMessage.isEmpty
//               ? !isReady
//                   ? Center(
//                       child: CircularProgressIndicator(),
//                     )
//                   : Container()
//               : Center(
//                   child: Text(errorMessage),
//                 ),
//           Container(
//             constraints: BoxConstraints(maxHeight: 25, maxWidth: 45),
//             child: Text(''),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:arodion/src/screens/read.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Shelf extends StatefulWidget {
  const Shelf({super.key});

  @override
  State<Shelf> createState() => _ShelfState();
}

class _ShelfState extends State<Shelf> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('My Books'),
        ),
        body: Column(children: [
          Row(
            children: [
              SizedBox(
                width: 245,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Image(image: AssetImage('assets/image/book-1.png')),
              ),
              FloatingActionButton(
                onPressed: () {
                  navigator!.push(
                      MaterialPageRoute(builder: ((context) => Reader())));
                },
                child: const Text(
                  "Read",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 15,
              width: MediaQuery.of(context).size.width * 0.94,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 5)]),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Center(
            child: Container(
              height: 15,
              width: MediaQuery.of(context).size.width * 0.94,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 5)]),
            ),
          )
        ]),
      ),
    );
  }
}
