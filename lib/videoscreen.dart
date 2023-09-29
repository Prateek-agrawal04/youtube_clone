import 'package:flutter/material.dart';
import 'package:ytclone/options.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key, required this.no});
  final int no;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final List<Options> videoOptions = [
      const Options(
          text: '  Subscribe',
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
          )),
      const Options(
          text: '  Like',
          icon: Icon(
            Icons.thumb_up_sharp,
            color: Colors.white,
          )),
      const Options(
          text: '  DisLike',
          icon: Icon(
            Icons.thumb_down,
            color: Colors.white,
          )),
      const Options(
          text: '  Share',
          icon: Icon(
            Icons.share,
            color: Colors.white,
          )),
      const Options(
          text: '  Remix',
          icon: Icon(
            Icons.shape_line_outlined,
            color: Colors.white,
          )),
      const Options(
          text: '  Thanks',
          icon: Icon(
            Icons.handshake_outlined,
            color: Colors.white,
          )),
      const Options(
          text: '  Download',
          icon: Icon(
            Icons.download_rounded,
            color: Colors.white,
          )),
    ];
    final Widget optionsButtons = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final videoOption in videoOptions)
            Padding(
              padding: const EdgeInsets.all(6.5),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    videoOption.icon,
                    Text(
                      videoOption.text,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
    const Widget comment = Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Row(
        children: [
          Text(
            'Comments',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Spacer(),
        ],
      ),
    );
    const Widget addComment = Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: TextField(
        decoration: InputDecoration(label: Text('Add a Comment')),
      ),
    );
    return width < 600
        ? Scaffold(
            body: ListView(
              children: [
                Image.asset('assets/yt-$no.jpeg'),
                const SizedBox(height: 8),
                optionsButtons,
                comment,
                addComment,
                SingleChildScrollView(
                  child: Expanded(
                    child: Column(
                      children: [
                        for (int i = 1; i <= 10; i++)
                          if (no != i)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) => VideoScreen(
                                            no: i,
                                          )));
                                },
                                child: Image.asset(
                                  'assets/yt-$i.jpeg',
                                ),
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : Scaffold(
            body: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Image.asset('assets/yt-$no.jpeg'),
                      ),
                      optionsButtons,
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     child: const Icon(Icons.thumb_up),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     child: const Icon(Icons.thumb_down),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     child: const Row(
                      //       children: [Icon(Icons.share), Text('Share')],
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     child: const Icon(
                      //       Icons.more_horiz_rounded,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                      comment,
                      addComment,
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Expanded(
                    child: Column(
                      children: [
                        for (int i = 1; i <= 10; i++)
                          if (no != i)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) => VideoScreen(
                                            no: i,
                                          )));
                                },
                                child: Image.asset(
                                  'assets/yt-$i.jpeg',
                                  cacheHeight: 300,
                                  cacheWidth: 370,
                                ),
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
