import 'package:flutter/material.dart';
import 'package:ytclone/videoscreen.dart';

class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> topRow = [
      'All Videos',
      'Today',
      'Live',
      'Continue Watching',
      'Unwatched',
      'Posts',
      'News',
      'Recently Uploaded',
      'New to you'
    ];
    final width = MediaQuery.of(context).size.width;
    int gridCount = width < 600 ? 1 : 2;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(31, 0, 8, 5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int j = 1; j <= 22; j++)
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/ytp-$j.jpeg',
                            cacheHeight: 50,
                            cacheWidth: 50,
                          )),
                    ),
                  ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'All',
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final elements in topRow)
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child:
                        ElevatedButton(onPressed: () {}, child: Text(elements)),
                  ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Settings',
                      style: TextStyle(color: Colors.blueAccent),
                    ))
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridCount,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 15,
            ),
            children: [
              for (int i = 1; i <= 10; i++)
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => VideoScreen(
                              no: i,
                            )));
                  },
                  child: Image.asset('assets/yt-$i.jpeg'),
                ),
            ],
          ),
        )
      ],
    );
  }
}
