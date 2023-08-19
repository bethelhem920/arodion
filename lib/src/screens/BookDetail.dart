import 'package:arodion/src/widget/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details_screen.dart';

class BookDetail extends StatefulWidget {
  BookDetail(this.author, this.des, this.genre, this.imgpath, this.language,
      this.price, this.title, this.rating);
  String imgpath;
  String title;
  String author;
  String genre;
  String language;
  String price;
  String des;
  double rating;

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  bool isSelected = false;
  void toggleFavorite() {
    setState(() {
      if (isSelected == true) {
        isSelected = false;
      } else {
        isSelected = true;
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TextStyle maintextstyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text('Detail'),
          actions: [
            IconButton(
                onPressed: () {
                  toggleFavorite();
                },
                icon: Icon(
                  isSelected ? Icons.favorite : Icons.favorite_border,
                  color: isSelected ? Colors.red : Colors.black,
                ))
          ],
          leading: IconButton(
              onPressed: () {
                navigator!.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Image(
                image: AssetImage(widget.imgpath),
                width: MediaQuery.of(context).size.width * 0.5,
                height: 200,
              ),
              Column(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.author,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  BookRating(score: widget.rating)
                ],
              ),
            ],
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(18),
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.85,
              constraints: BoxConstraints(
                maxHeight: 65,
              ),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(11, 0, 0, 0),
                  borderRadius: BorderRadius.circular(12)),
              child: Wrap(
                spacing: MediaQuery.of(context).size.width * 0.85 / 6.5,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        'Genre',
                        style: maintextstyle,
                      ),
                      Text(widget.genre),
                    ],
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        'Language',
                        style: maintextstyle,
                      ),
                      Text(widget.language),
                    ],
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        'Price',
                        style: maintextstyle,
                      ),
                      Text(widget.price),
                    ],
                  )
                ],
              ),
            ),
          ),

          TabBar(
              indicatorPadding: EdgeInsets.all(8),
              labelColor: Colors.black,
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              controller: controller,
              indicatorColor: Colors.teal,
              indicatorSize: TabBarIndicatorSize.label,
              padding: EdgeInsets.zero,
              tabs: [
                Tab(
                  text: 'Describtion',
                ),
                Tab(
                  text: 'Reviews',
                )
              ]),

          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     'Describtion',
          //     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          //   ),
          // ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: TabBarView(
                controller: controller,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: MediaQuery.of(context).size.height * 0.3,
                        margin: EdgeInsets.all(8),
                        child: Text(widget.des),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.teal),
                          elevation: MaterialStatePropertyAll(0),
                          fixedSize: MaterialStatePropertyAll(Size(
                              MediaQuery.of(context).size.width * 0.65, 48)),
                        ),
                        child: Text('Purchase'),
                        onPressed: () {
                          DetailScreen.buildShowModalBtnSheet(
                              context,
                              'Top Ten',
                              'Business hacks',
                              'Business Hack is your essential roadmap to business growth and online marketing success. Author and successful entrepreneur John Lee shares his proven methods to harness the power of online tools, including using social media―offering practical steps to create and implement highly effective cyber-marketing campaigns',
                              'assets/image/book-2.png');
                        },
                      )
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: ListView(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(8),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(15, 0, 0, 0),
                                  borderRadius: BorderRadius.circular(12)),
                              height: 100,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage:
                                        AssetImage('assets/image/pp.jpg'),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: TextField(
                                      enabled: false,
                                      maxLines: 100,
                                      decoration: InputDecoration(
                                        hintText: 'Leave a comment',
                                        hintStyle: TextStyle(
                                            fontSize: 11, color: Colors.black),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              right: 15,
                              child: Container(
                                // foregroundDecoration:
                                //     BoxDecoration(color: Colors.white),
                                alignment: Alignment.center,
                                constraints: BoxConstraints(
                                  maxHeight: 25,
                                  maxWidth: 65,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.teal),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        Review(
                          name: 'Alex Hobbs',
                          review: 'This book is the best romantic selling ever',
                        ),
                        Review(
                          name: 'Maddy Roberts',
                          review: 'It\'s so much worth the money.',
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class Review extends StatelessWidget {
  Review({
    super.key,
    required this.name,
    required this.review,
  });
  String name;
  String review;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      color: const Color.fromARGB(15, 0, 0, 0),
      constraints: BoxConstraints(
        maxHeight: 75,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/image/pp.jpg'),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(190, 0, 0, 0)),
              ),
              Text(
                review,
                style: TextStyle(fontSize: 10, color: Colors.black54),
              )
            ],
          )
        ],
      ),
    );
  }
}
