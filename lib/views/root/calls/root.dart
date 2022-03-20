import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

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
            children: const [
              Icon(
                Icons.call_missed_outgoing_sharp,
                color: Colors.red,
                size: 18,
              ),
              Text(' Yesterday, 3:20 PM'),
            ],
          ),
          trailing: const Icon(
            Icons.call,
            color: Colors.green,
          ),
        );
      },
    );
  }
}
