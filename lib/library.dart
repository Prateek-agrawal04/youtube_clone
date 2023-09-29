import 'package:flutter/material.dart';
import 'package:ytclone/videoscreen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Row(
              children: [
                Icon(Icons.history),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'History',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i <= 10; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => VideoScreen(
                              no: i,
                            ),
                          ),
                        );
                      },
                      child: Image.asset('assets/yt-$i.jpeg',
                          cacheHeight: 140, cacheWidth: 170),
                    ),
                  ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Row(
              children: [
                Icon(Icons.playlist_play),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Playlists',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i <= 10; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => VideoScreen(
                              no: i,
                            ),
                          ),
                        );
                      },
                      child: Image.asset('assets/yt-$i.jpeg',
                          cacheHeight: 140, cacheWidth: 170),
                    ),
                  ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Row(
              children: [
                Icon(Icons.play_arrow),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Your Videos',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Spacer(),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Row(
              children: [
                Icon(Icons.download),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Downloads',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Spacer(),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Row(
              children: [
                Icon(Icons.movie),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Your Movies',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
