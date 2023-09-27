import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key, required this.no});
  final int no;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width < 600
        ? Scaffold(
            body: ListView(
              children: [Image.asset('assets/yt-$no.jpeg')],
            ),
          )
        : Scaffold(
            body: Row(children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/yt-$no.jpeg'),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.notifications),
                                Text(
                                  'Subscribe',
                                  style: TextStyle(color: Colors.red),
                                )
                              ],
                            )),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.thumb_up),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.thumb_down),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [Icon(Icons.share), Text('Share')],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.more_horiz_rounded),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Expanded(
                  child: Column(
                    children: [
                      for (int i = 1; i <= 10; i++)
                        if (no != i)
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => VideoScreen(
                                        no: i,
                                      )));
                            },
                            child: Image.asset(
                              'assets/yt-$i.jpeg',
                              cacheHeight: 350,
                              cacheWidth: 350,
                            ),
                          ),
                    ],
                  ),
                ),
              )
            ]),
          );
  }
}
