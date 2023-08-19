import 'package:arodion/src/constants/colors.dart';
import 'package:arodion/src/constants/image_string.dart';
import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';
import 'package:arodion/src/screens/profile_screen.dart';
import 'package:arodion/src/screens/read.dart';

import 'package:arodion/src/widget/common_widgets/catagory_widgets.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';

import '../widget/reading_card_list.dart';
import 'details_screen.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<String> mybooks = [
    'crushing & influence',
    'Top Ten Business Hacks'
  ];

  final List<String> results = [];

  void handleSearch(String input) {
    results.clear();
    for (var str in mybooks) {
      if (str.toLowerCase().contains(input.toLowerCase())) {
        setState(() {
          results..add(str);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final txtTheme = Theme.of(context).textTheme;
    int _currentIndex = 0;
    List<Widget> body = const [
      Icon(Icons.home_outlined),
      Icon(Icons.book_online_outlined),
      Icon(Icons.menu_book_outlined),
    ];
    final TextEditingController _searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Store',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Search());
              },
              icon: Icon(Icons.search))
        ],
        // leading: Wrap(
        //   children: [Text('Welcome!'), Text('Jane Doe')],
        // ),
      ),
      body: SingleChildScrollView(
        child: Container(
          //  padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //spacing at the top
              SizedBox(
                height: 19,
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Spacer(),
              //     Text(
              //       'Store',
              //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              //     ),
              //     Spacer(),
              //     IconButton(
              //         onPressed: () {
              //           showSearch(context: context, delegate: Search());
              //         },
              //         icon: Icon(Icons.search))
              //   ],
              // ),
              //search box
              // Container(
              //   decoration: const BoxDecoration(
              //       border: Border(left: BorderSide(width: 4))),
              //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              //   child: TextField(
              //     onChanged: (value) {
              //       handleSearch(value);
              //     },
              //     // onTap: () {
              //     //   showSearch(context: context, delegate: Search());
              //     // },
              //     //      showCursor: false,
              //     // keyboardAppearance: ,
              //     style: TextStyle(
              //       fontSize: 20,
              //     ),
              //     cursorColor: Colors.black,
              //     textInputAction: TextInputAction.search,
              //     controller: _searchController,
              //     decoration: InputDecoration(
              //       hintStyle: TextStyle(fontSize: 30, color: Colors.black26),
              //       hintText: 'Search...',
              //       suffixIcon: IconButton(
              //         icon: Icon(Icons.clear),
              //         onPressed: () {
              //           if (_searchController.text.isEmpty) {
              //             Close('context', null);
              //           } else {
              //             _searchController.clear();
              //           }
              //         },
              //       ),
              //       prefixIcon: IconButton(
              //         icon: Icon(Icons.search),
              //         onPressed: () {
              //           // Perform the search here
              //         },
              //       ),
              //       suffixIconColor: Colors.black,
              //       prefixIconColor: Colors.black,
              //       focusedBorder:
              //           OutlineInputBorder(borderSide: BorderSide.none),
              //       enabledBorder:
              //           OutlineInputBorder(borderSide: BorderSide.none),
              //     ),
              //   ),

              // child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(tDashboardSearch,
              //           style: txtTheme.headlineMedium
              //               ?.apply(color: Colors.grey.withOpacity(0.5))),
              //       const Icon(
              //         Icons.search,
              //         size: 25,
              //       ),
              //     ]),
              //  ),

              // const SizedBox(
              //   height: tDashboardPadding,
              // ),

              // //catagories
              // const SizedBox(
              //   height: tDashboardPadding,
              // ),
              // Expanded(
              //   child: results.isEmpty
              //       ? Column(children: [

              //       ])
              //       : ListView.builder(
              //           itemCount: results.length,
              //           itemBuilder: (context, index) {
              //             final data = results[index];
              //             return ListTile(
              //                 leading: const Icon(Icons.list),
              //                 trailing: const Text(
              //                   "GFG",
              //                   style:
              //                       TextStyle(color: Colors.green, fontSize: 15),
              //                 ),
              //                 title: Text(data));
              //           }),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          const TextSpan(text: "Romantic "),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              CatagoryWidget(),
              const SizedBox(
                height: tDashboardPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          const TextSpan(text: "Poetry "),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              CatagoryWidget(),
              const SizedBox(
                height: tDashboardPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          const TextSpan(text: "Poetry "),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              CatagoryWidget(),
              const SizedBox(
                height: tDashboardPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          const TextSpan(text: "Poetry "),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              CatagoryWidget(),
              const SizedBox(
                height: tDashboardPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Search extends SearchDelegate {
  List<String> resluts = [
    'emegua',
    'Crushing & Influence',
    'Top Ten Business Hacks'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {}

  @override
  Widget buildResults(BuildContext context) {
    return query.contains('top')
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset('assets/image/book-1.png'),
              title: Text('Crushing & Influence'),
              subtitle: Text("by naol abebe"),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset('assets/image/book-2.png'),
              title: Text('Crushing & Influence'),
              subtitle: Text("by naol abebe"),
            ));
    // return ReadingListCard(
    //     image: "assets/image/book-1.png",
    //     title: "Crushing & Influence",
    //     auth: "Gary Venchukk",
    //     rating: 4.9,
    //     pressDetails: () {
    //       DetailScreen.buildShowModalBtnSheet(
    //           context,
    //           'Crushing &',
    //           'Influence',
    //           'This is a demo for details of this book info',
    //           'assets/image/book-1.png');
    //     },
    //     pressRead: () => Get.to(() => Reader()));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> Suggestions = resluts.where((searchResluts) {
      final result = searchResluts.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();
    return ListView.builder(
        itemCount: Suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = Suggestions[index];
          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        });
  }
}
