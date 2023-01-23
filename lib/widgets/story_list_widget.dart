import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_app/mock/stories_mock.dart';

class StoryListWidget extends StatelessWidget {
  const StoryListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              width: 68,
              height: 84,
              child: Column(
                children: [
                  SizedBox(
                    width: 65,
                    height: 65,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/Image.png'),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SvgPicture.asset('assets/icons/add_blue.svg'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text('biscuttu'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: SizedBox(
                height: 84,
                width: MediaQuery.of(context).size.width - 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories_mock.length,
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 68,
                      height: 84,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 65,
                            height: 65,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0XFFD300C5),
                                    Color(0XFFFE393B),
                                    Color(0XFFFFD000),
                                  ],
                                ),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: SizedBox(
                                  width: 63,
                                  height: 63,
                                  child: Image.asset(stories_mock[index]["image_url"] ?? ""),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(stories_mock[index]["name"] ?? ""),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
