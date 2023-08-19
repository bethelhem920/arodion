import 'package:arodion/src/constants/colors.dart';
import 'package:arodion/src/constants/image_string.dart';
import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            child: IconButton(
              onPressed: () {},
              icon: const Image(image: AssetImage(tUserProfileImge)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: tDashboardPadding,
              ),

              //search box
              Container(
                decoration: const BoxDecoration(
                    border: Border(left: BorderSide(width: 4))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(tDashboardSearch,
                          style: txtTheme.headlineMedium
                              ?.apply(color: Colors.grey.withOpacity(0.5))),
                      const Icon(
                        Icons.mic,
                        size: 25,
                      ),
                    ]),
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),

              //catagories
              SizedBox(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: Center(
                                child: Text(
                              "Js",
                              style: txtTheme.headlineSmall
                                  ?.apply(color: Colors.white),
                            )),
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("java script",
                                    style: txtTheme.headlineSmall,
                                    overflow: TextOverflow.ellipsis),
                                Text("10 Lessons",
                                    style: txtTheme.bodyMedium,
                                    overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: Center(
                                child: Text(
                              "Js",
                              style: txtTheme.headlineSmall
                                  ?.apply(color: Colors.white),
                            )),
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("java script",
                                    style: txtTheme.headlineSmall,
                                    overflow: TextOverflow.ellipsis),
                                Text("10 Lessons",
                                    style: txtTheme.bodyMedium,
                                    overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: Center(
                                child: Text(
                              "Js",
                              style: txtTheme.headlineSmall
                                  ?.apply(color: Colors.white),
                            )),
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("java script",
                                    style: txtTheme.headlineSmall,
                                    overflow: TextOverflow.ellipsis),
                                Text("10 Lessons",
                                    style: txtTheme.bodyMedium,
                                    overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
