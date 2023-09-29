import 'package:flutter/material.dart';
import 'package:ytclone/videoscreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> topRow = [
    'All',
    'New to You',
    'Music',
    'Gaming',
    'Mixes',
    'Live',
    'News',
    'Recently Uploaded',
    'New to you'
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    int gridCount = width < 600 ? 1 : 2;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.explore_outlined),
                ),
                for (final elements in topRow)
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child:
                        ElevatedButton(onPressed: () {}, child: Text(elements)),
                  ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Send Feedback',
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

                // for (final elements in topRow)
                //   const SizedBox(
                //     width: 5,
                //   ),
                // ElevatedButton(
                //     onPressed: () {}, child: const Text('New to you')),
                // const SizedBox(
                //   width: 5,
                // ),
                // ElevatedButton(onPressed: () {}, child: const Text('Music')),
                // const SizedBox(
                //   width: 5,
                // ),
                // ElevatedButton(onPressed: () {}, child: const Text('Gaming')),
                // const SizedBox(
                //   width: 5,
                // ),
                // ElevatedButton(onPressed: () {}, child: const Text('Mixes')),
                // const SizedBox(
                //   width: 5,
                // ),
                // ElevatedButton(onPressed: () {}, child: const Text('Live')),
                // const SizedBox(
                //   width: 5,
                // ),
                // ElevatedButton(onPressed: () {}, child: const Text('News')),
                // const SizedBox(
                //   width: 5,
                // ),
                // ElevatedButton(
                //     onPressed: () {}, child: const Text('Recently Uploaded')),
                // const SizedBox(
                //   width: 5,
                // ),
                // ElevatedButton(
                //     onPressed: () {}, child: const Text('New to you')),
                // const SizedBox(
                //   width: 5,
                // ),
