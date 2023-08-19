import 'package:arodion/src/constants/colors.dart';
import 'package:arodion/src/screens/read.dart';

import 'package:arodion/src/widget/book_rating.dart';

import 'package:flutter/material.dart';
import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../widget/foget_password_widget.dart';
import 'forget_password_mail.dart';

class DetailScreen {
  static Future<dynamic> buildShowModalBtnSheet(BuildContext context,
      String title1, String title2, String details, String imgpath) {
    var size = MediaQuery.of(context).size;
    int index = 1;
    // ignore: empty_statements
    isselected() {}
    ;
    return showModalBottomSheet(
      constraints: BoxConstraints(maxHeight: 335),
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      builder: (context) => Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Complete action via'),
            PaymentSelection(
              index: index,
              callback: isselected(),
            ),
            //   constraints: BoxConstraints(maxHeight: 200),
            //   // child: Flex(
            //   //   crossAxisAlignment: CrossAxisAlignment.start,
            //   //   direction: Axis.horizontal,
            //   //   children: [
            //   //     Expanded(
            //   //         flex: 1,
            //   //         child: Column(
            //   //           children: [
            //   //             Container(
            //   //               alignment: Alignment.centerLeft,
            //   //               child: Text(
            //   //                 title1,
            //   //                 style: Theme.of(context)
            //   //                     .textTheme
            //   //                     .headlineMedium
            //   //                     ?.copyWith(fontSize: 28),
            //   //               ),
            //   //             ),
            //   //             Container(
            //   //               margin: EdgeInsets.only(top: size.height * .005),
            //   //               alignment: Alignment.centerLeft,
            //   //               padding: const EdgeInsets.only(top: 0),
            //   //               child: Text(
            //   //                 title2,
            //   //                 style: Theme.of(context)
            //   //                     .textTheme
            //   //                     .titleMedium
            //   //                     ?.copyWith(
            //   //                       fontSize: 25,
            //   //                       fontWeight: FontWeight.bold,
            //   //                     ),
            //   //               ),
            //   //             ),
            //   //             Row(
            //   //               children: [
            //   //                 Column(
            //   //                   crossAxisAlignment: CrossAxisAlignment.center,
            //   //                   children: [
            //   //                     Container(
            //   //                       width: size.width * .3,
            //   //                       padding:
            //   //                           EdgeInsets.only(top: size.height * .02),
            //   //                       child: Text(
            //   //                         details,
            //   //                         maxLines: 5,
            //   //                         style: TextStyle(
            //   //                           fontSize: 10,
            //   //                           color: kLightBlackColor,
            //   //                         ),
            //   //                       ),
            //   //                     ),
            //   //                     // Container(
            //   //                     //   margin: EdgeInsets.only(
            //   //                     //       top: size.height * .015),
            //   //                     //   padding: const EdgeInsets.only(
            //   //                     //       left: 10, right: 10),
            //   //                     //   decoration: BoxDecoration(
            //   //                     //     color: Colors.white,
            //   //                     //     borderRadius: BorderRadius.circular(30),
            //   //                     //   ),
            //   //                     //   child: FloatingActionButton(
            //   //                     //     onPressed: () {
            //   //                     //       navigator!.push(MaterialPageRoute(
            //   //                     //           builder: ((context) => Reader())));
            //   //                     //     },
            //   //                     //     child: const Text(
            //   //                     //       "Read",
            //   //                     //       style: TextStyle(
            //   //                     //           fontWeight: FontWeight.bold),
            //   //                     //     ),
            //   //                     //   ),
            //   //                     // )
            //   //                   ],
            //   //                 ),
            //   //                 Column(
            //   //                   children: [
            //   //                     IconButton(
            //   //                       icon: const Icon(
            //   //                         Icons.favorite_border,
            //   //                         size: 20,
            //   //                         color: Colors.grey,
            //   //                       ),
            //   //                       onPressed: () {},
            //   //                     ),
            //   //                     const BookRating(score: 4.9),
            //   //                   ],
            //   //                 )
            //   //               ],
            //   //             )
            //   //           ],
            //   //         )),
            //   //     Expanded(
            //   //         flex: 1,
            //   //         child: Container(
            //   //           color: Colors.transparent,
            //   //           child: Image.asset(
            //   //             imgpath,
            //   //             height: double.infinity,
            //   //             alignment: Alignment.topRight,
            //   //             fit: BoxFit.fitWidth,
            //   //           ),
            //   //         )),
            //   //   ],
            //   // ),
            // ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (index == 2) {
                  showAboutDialog(context: context, children: [
                    Column(
                      children: [
                        Text('promo code'),
                        SizedBox(
                          height: 25,
                          width: 45,
                          child: TextField(
                            decoration:
                                InputDecoration(hintText: 'Enter Promo code'),
                          ),
                        )
                      ],
                    )
                  ]);
                } else {
                  print(index);
                }
              },
              child: Text('Buy'),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.teal),
                elevation: MaterialStatePropertyAll(0),
                fixedSize: MaterialStatePropertyAll(
                    Size(MediaQuery.of(context).size.width, 48)),
              ),
            )
            // BookInfo(
            //   size: size,
            //   Title1: ,
            //   Title2: 'Business Hacks',
            //   detail:
            //       'Business Hack is your essential roadmap to business growth and online marketing success. Author and successful entrepreneur John Lee shares his proven methods to harness the power of online tools, including using social media―offering practical steps to create and implement highly effective cyber-marketing campaigns.',
            //   imgpath: 'assets/image/assets/image/book-2.png',
            // )
            // Text(tForgetPasswordTitle,
            //     style: Theme.of(context).textTheme.headlineSmall),
            // Text(tForgetPasswordSubTitle,
            //     style: Theme.of(context).textTheme.bodyMedium),
            // const SizedBox(height: 30.0),
            // ForgetPaswordWidget(
            //   onTap: () {
            //     Navigator.pop(context);
            //     Get.to(() => BookInfo(size: size));
            //   },
            //   btnIcon: Icons.mail_outline_rounded,
            //   title: tEmail,
            //   subTitle: tResetViaEMail,
            // ),
            // const SizedBox(height: 20.0),
            // ForgetPaswordWidget(
            //   onTap: () {},
            //   btnIcon: Icons.mobile_friendly_outlined,
            //   title: tPhoneNo,
            //   subTitle: tResetViaPhone,
            // ),
          ],
        ),
      ),
    );
  }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
// return
//   }
}
//
// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               alignment: Alignment.topCenter,
//               children: [
//                 Container(
//                     alignment: Alignment.topCenter,
//                     padding: EdgeInsets.only(
//                         top: size.height * .12,
//                         left: size.width * .1,
//                         right: size.width * .02),
//                     height: size.height * .48,
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(50),
//                         bottomRight: Radius.circular(50),
//                       ),
//                     ),
//                     child: BookInfo(
//                       size: size,
//                     )),
// //                 Padding(
// //                   padding: EdgeInsets.only(top: size.height * .48 - 20),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       ChapterCard(
// //                         name: "Money",
// //                         chapterNumber: 1,
// //                         tag: "Life is about change",
// //                         press: () {},
// //                       ),
// //                       ChapterCard(
// //                         name: "Power",
// //                         chapterNumber: 2,
// //                         tag: "Everything loves power",
// //                         press: () {},
// //                       ),
// //                       ChapterCard(
// //                         name: "Influence",
// //                         chapterNumber: 3,
// //                         tag: "Influence easily like never before",
// //                         press: () {},
// //                       ),
// //                       ChapterCard(
// //                         name: "Win",
// //                         chapterNumber: 4,
// //                         tag: "Winning is what matters",
// //                         press: () {},
// //                       ),
// //                       const SizedBox(height: 10),
// //                     ],
// //                   ),
// //                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 40,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ChapterCard extends StatelessWidget {
//   const ChapterCard(
//       {required this.name,
//       required this.tag,
//       required this.chapterNumber,
//       required this.press,
//       super.key});
//   final String name;
//   final String tag;
//   final int chapterNumber;
//   final Function press;

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//       margin: const EdgeInsets.only(bottom: 16),
//       width: size.width - 48,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(38.5),
//         boxShadow: [
//           BoxShadow(
//             offset: const Offset(0, 10),
//             blurRadius: 33,
//             color: const Color(0xFFD3D3D3).withOpacity(.84),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(
//                   text: "Chapter $chapterNumber : $name \n",
//                   style: const TextStyle(
//                     fontSize: 16,
//                     color: kBlackColor,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextSpan(
//                   text: tag,
//                   style: const TextStyle(color: kLightBlackColor),
//                 ),
//               ],
//             ),
//           ),
//           const Spacer(),
//         ],
//       ),
//     );
//   }
// }

class BookInfo extends StatelessWidget {
  const BookInfo(
      {required this.size,
      super.key,
      required this.Title1,
      required this.Title2,
      required this.detail,
      required this.imgpath});
  final String Title1;
  final String Title2;
  final String detail;
  final String imgpath;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 250),
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: Axis.horizontal,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      Title1,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(fontSize: 28),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: this.size.height * .005),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 0),
                    child: Text(
                      Title2,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: this.size.width * .3,
                            padding:
                                EdgeInsets.only(top: this.size.height * .02),
                            child: Text(
                              detail,
                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: this.size.height * .015),
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: const Text(
                                "Read",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                          const BookRating(score: 4.9),
                        ],
                      )
                    ],
                  )
                ],
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                child: Image.asset(
                  imgpath,
                  height: double.infinity,
                  alignment: Alignment.topRight,
                  fit: BoxFit.fitWidth,
                ),
              )),
        ],
      ),
    );
  }
}

class Payment extends StatelessWidget {
  const Payment({
    super.key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    required this.imgpath,
    //  required this.index
  });
//  final int index;
  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final ValueChanged<bool> onChanged;
  final String imgpath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio<bool>(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashRadius: 0,
          fillColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.amber;
            }
            return Colors.black;
          }),
          // focusColor: Colors.amber,
          groupValue: groupValue,
          value: value,
          onChanged: (bool? newValue) {
            onChanged(newValue!);
          },
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 14),
        ),
        Spacer(),
        Image(
          height: 60,
          image: AssetImage(imgpath),
          width: 100,
          fit: BoxFit.contain,
        )
      ],
    );
  }
}

// typedef void callback();

class PaymentSelection extends StatefulWidget {
  PaymentSelection({
    required this.callback,
    required this.index,
  });
  final int index;

  final Function? callback;
  @override
  State<PaymentSelection> createState() => _PaymentSelectionState();
}

class _PaymentSelectionState extends State<PaymentSelection> {
  bool _isRadioSelected = false;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Payment>[
        Payment(
          label: 'Promo code',
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          value: value,
          groupValue: _isRadioSelected,
          onChanged: (bool newValue) {
            setState(() {
              _isRadioSelected = newValue;
              value = false;
              widget.callback!();
              //call back to parent function

              //true for promocode ,null for cash on delivery
            });
          },
          imgpath: 'assets/image/promo.png',
        ),
        Payment(
          label: 'Chapa',
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          value: true,
          groupValue: _isRadioSelected ? true : false,
          onChanged: (bool newValue) {
            setState(() {
              //  value = true;

              _isRadioSelected = newValue;
              value = false;
              //   widget.callback(widget.index = 2);
            });
          },
          imgpath: 'assets/image/chapa.jpg',
        ),
        Payment(
          label: 'TeleBirr',
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          value: false,
          groupValue: value ? _isRadioSelected : true,
          onChanged: (bool newValue) {
            setState(() {
              _isRadioSelected = newValue;
              value = true;
              //widget.callback(widget.index = 3);
            });
          },
          imgpath: 'assets/image/telebirr.png',
        ),
      ],
    );
  }
}

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
