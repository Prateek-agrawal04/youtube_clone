import 'package:flutter/material.dart';
import 'package:ytclone/options.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Options> shortsOptions = [
      const Options(
          text: '  Like',
          icon: Icon(
            Icons.thumb_up_sharp,
            color: Colors.white,
          )),
      const Options(
          text: '  Dislike',
          icon: Icon(
            Icons.thumb_down,
            color: Colors.white,
          )),
      const Options(
          text: '  Comments',
          icon: Icon(
            Icons.comment,
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
    ];
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              for (int i = 1; i <= 7; i++)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/ytsh-$i.png',
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 160,
                        child: Column(
                          children: [
                            for (final shortOption in shortsOptions)
                              IconButton(
                                onPressed: () {},
                                icon: Column(
                                  children: [
                                    shortOption.icon,
                                    Text(
                                      shortOption.text,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
