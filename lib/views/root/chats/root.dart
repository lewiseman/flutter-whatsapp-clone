import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://picsum.photos/200/300?image=9',
            ),
          ),
          title: const Text('John Doe'),
          subtitle: Row(
            children: [
              Icon(Icons.check_rounded),
              Text('Lorem  sed dolore magna aliqua.'),
            ],
          ),
          trailing: Text('12:30'),
        
        );
      },
    );
  }
}
