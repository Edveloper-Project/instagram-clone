import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_app/mock/feeds_mock.dart';

class FeedListWidget extends StatelessWidget {
  const FeedListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: feeds_mock.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Expanded(
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Image.asset(
                                  "",
                                  errorBuilder: (ctx, obj, stackTrace) {
                                    return Container();
                                  },
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text("biscuttu"),
                            ],
                          ),
                          const Spacer(),
                          SvgPicture.asset('assets/icons/more.svg'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      feeds_mock[index]["image_url"] ?? "",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Expanded(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset('assets/icons/like.svg'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset('assets/icons/comment.svg'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset('assets/icons/message.svg'),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                SvgPicture.asset('assets/icons/bookmark.svg'),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Wrap(
                            children: [
                              const Text("biscuttu", style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 5),
                              const Text("write your caption here"),
                              Container(),
                            ],
                          ),
                        ),
                        Row(
                          children: const [
                            Text("...", style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("more"),
                          ],
                        ),
                        const Text("View all 2232 comments"),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Wrap(
                            children: [
                              const Text("27 July", style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 5),
                              const Text("."),
                              const SizedBox(width: 5),
                              const Text("See Translation"),
                              Container(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
