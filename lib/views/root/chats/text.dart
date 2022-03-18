import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('John Doe'),
        centerTitle: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(
              'https://theabbie.github.io/blog/assets/official-whatsapp-background-image.jpg',
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.grey.shade500.withOpacity(.8),
        ),
        child: Stack(
          children: [
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Bubble(
                  margin: const BubbleEdges.only(top: 10),
                  alignment: Alignment.topRight,
                  nip: BubbleNip.rightTop,
                  color: const Color.fromRGBO(225, 255, 199, 1),
                  child:
                      const Text('Hello, World!', textAlign: TextAlign.right),
                );
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                width: size.width,
                // height: size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                            bottom: 20, left: 8, right: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 4),
                              child: Icon(
                                Icons.emoji_emotions_outlined,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Message',
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.attach_file_outlined,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.grey.shade800,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, right: 2),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.mic_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
