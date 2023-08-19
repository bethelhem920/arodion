import 'package:arodion/src/constants/colors.dart';
import 'package:arodion/src/screens/details_screen.dart';
import 'package:arodion/src/widget/book_rating.dart';
import 'package:arodion/src/widget/two_side_rounded_button.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReadingListCard extends StatefulWidget {
  ReadingListCard(
      {required this.image,
      required this.title,
      required this.auth,
      required this.rating,
      required this.pressDetails,
      required this.pressRead,
      required this.price,
      super.key});
  final String image;
  final String title;
  final String auth;
  final String price;
  final double rating;
  final VoidCallback pressDetails;
  final VoidCallback pressRead;

  @override
  State<ReadingListCard> createState() => _ReadingListCardState();
}

class _ReadingListCardState extends State<ReadingListCard> {
  bool isfavourite = false;
  static const likedkey = 'Liked_key';

  toogleFavourite() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(likedkey, isfavourite);
    setState(() {
      isfavourite = !isfavourite;
    });
  }

  void keepIt() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var liked = preferences.getBool(likedkey);
    print(liked);
    print(isfavourite);
    setState(() {
      isfavourite = liked!;
    });
  }

  @override
  void initState() {
    super.initState();
    keepIt();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            widget.image,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    isfavourite ? Icons.favorite : Icons.favorite_border,
                    color: isfavourite ? Colors.red : Colors.black,
                  ),
                  onPressed: () {
                    toogleFavourite();
                  },
                ),
                BookRating(score: widget.rating),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: kBlackColor),
                        children: [
                          TextSpan(
                            text: "${widget.title}\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: widget.auth,
                            style: TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: widget.pressDetails,
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("Details"),
                        ),
                      ),
                      Expanded(
                          child: TwoSideRoundedButton(
                              text: widget.price,
                              onPress: () {
                                DetailScreen.buildShowModalBtnSheet(context,
                                    'title1', 'title2', 'details', 'imgpath');
                              }))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
