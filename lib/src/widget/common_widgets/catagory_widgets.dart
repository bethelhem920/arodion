import 'package:arodion/src/screens/BookDetail.dart';
import 'package:arodion/src/screens/details_screen.dart';
import 'package:arodion/src/screens/read.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/shelf.dart';
import '../reading_card_list.dart';

class CatagoryWidget extends StatelessWidget {
  const CatagoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ReadingListCard(
            image: "assets/image/book-1.png",
            title: "Crushing & Influence",
            auth: "Gary Venchukk",
            rating: 4.9,
            price: '110 birr',
            pressDetails: () => Get.to(() => BookDetail(
                'by Gary Venchukk',
                'When shy Miss Eliza Balfour married the austere Earl of Somerset, twenty years her senior, it was the match of the season--no matter that he was not the husband Eliza would have chosen.\n\nBut ten years later, Eliza is widowed. And at eight and twenty years, she is suddenly left titled, rich, and, for the first time in her life, utterly in control of her own future. Instead of living out her mourning quietly, Eliza heads to Bath with her cousin Margaret. After years of living according to everyone else\'s rules, Eliza has resolved, at last, to do as she wants.',
                'Romantic',
                'assets/image/book-1.png',
                'English',
                '110 Birr',
                'Crushing & Influence',
                4.9)),
            // pressDetails: () {
            //   DetailScreen.buildShowModalBtnSheet(
            //       context,
            //       'Crushing &',
            //       'Influence',
            //       'This is a demo for details of this book info',
            //       'assets/image/book-1.png');
            // },
            pressRead: () => Get.to(() => Reader()),
          ),
          ReadingListCard(
            price: '90 birr',
            image: "assets/image/book-2.png",
            title: "Top Ten Business Hacks",
            auth: "Herman Joel",
            rating: 4.8,
            pressDetails: () => Get.to(() => BookDetail(
                'by Herman Joel',
                'When shy Miss Eliza Balfour married the austere Earl of Somerset, twenty years her senior, it was the match of the season--no matter that he was not the husband Eliza would have chosen.\n\nBut ten years later, Eliza is widowed. And at eight and twenty years, she is suddenly left titled, rich, and, for the first time in her life, utterly in control of her own future. Instead of living out her mourning quietly, Eliza heads to Bath with her cousin Margaret. After years of living according to everyone else\'s rules, Eliza has resolved, at last, to do as she wants.',
                'Business',
                'assets/image/book-2.png',
                'English',
                '90 Birr',
                'Top Ten Business Hacks',
                4.8)),
            pressRead: () => Get.to(() => Reader()),
          ),
          ReadingListCard(
            price: '150 birr',
            image: "assets/image/book-3.png",
            title: "How to Win Friends",
            auth: "Gery Wiston",
            rating: 4.8,
            pressDetails: () => Get.to(() => BookDetail(
                'by Gery Wiston',
                'When shy Miss Eliza Balfour married the austere Earl of Somerset, twenty years her senior, it was the match of the season--no matter that he was not the husband Eliza would have chosen.\n\nBut ten years later, Eliza is widowed. And at eight and twenty years, she is suddenly left titled, rich, and, for the first time in her life, utterly in control of her own future. Instead of living out her mourning quietly, Eliza heads to Bath with her cousin Margaret. After years of living according to everyone else\'s rules, Eliza has resolved, at last, to do as she wants.',
                'Pyschology',
                'assets/image/book-3.png',
                'English',
                '150 Birr',
                'How to Win Friends &\n     Influence People',
                4.8)),
            pressRead: () => Get.to(() => Reader()),
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
