import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';
import 'package:whatsapp/views/root/status/story.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            horizontalTitleGap: 25,
            leading: Badge(
              badgeColor: Colors.teal.shade600,
              elevation: 0,
              shape: BadgeShape.circle,
              toAnimate: false,
              position: BadgePosition.bottomEnd(),
              badgeContent: const Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
              child: const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  'https://cdn140.picsart.com/297361716279211.png',
                ),
              ),
            ),
            title: const Text('John Doe'),
            subtitle: const Text('Tap to add status update'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            child: Text('Viewed Updates'),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: StatusView(
                  spacing: 15,
                  padding: 3,
                  radius: 25,
                  strokeWidth: 3,
                  indexOfSeenStatus: 2,
                  numberOfStatus: 5,
                  centerImageUrl: 'https://picsum.photos/200/300',
                ),
                title: const Text('John Doe'),
                subtitle: const Text('Today, 10:30 AM'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatusStory(),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
