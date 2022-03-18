import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StatusStory extends StatelessWidget {
  StatusStory({Key? key}) : super(key: key);
  final StoryController controller = StoryController();

  List<StoryItem> storyItems = [
    StoryItem.text(title: 'John Doe', backgroundColor: Colors.red),
    StoryItem.pageProviderImage(NetworkImage('https://picsum.photos/200/300')),
    StoryItem.text(title: 'John Doe', backgroundColor: Colors.red),
    StoryItem.text(title: 'John Doe', backgroundColor: Colors.red),
    StoryItem.text(title: 'John Doe', backgroundColor: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        controller: controller,
        storyItems: storyItems,
        onVerticalSwipeComplete: (dir) {
          Navigator.pop(context);
        },
      ),
    );
  }
}
