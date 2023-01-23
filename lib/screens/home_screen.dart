import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_app/widgets/feed_list_widget.dart';
import 'package:instagram_clone_app/widgets/story_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: SvgPicture.asset('assets/icons/logo.svg'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/upload.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/like.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/message.svg'),
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: const [
            StoryListWidget(),
            FeedListWidget(),
          ],
        ),
      ),
    );
  }
}
