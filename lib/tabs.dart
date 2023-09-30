import 'package:flutter/material.dart';
import 'package:ytclone/accounts_screen.dart';
import 'package:ytclone/createsheet.dart';
import 'package:ytclone/homescreen.dart';
import 'package:ytclone/library.dart';
import 'package:ytclone/notif_screen.dart';
import 'package:ytclone/shorts_screen.dart';
import 'package:ytclone/subscriptions.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  Widget activeScreen = HomeScreen();

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_selectedPageIndex == 0) {
      activeScreen = HomeScreen();
    }
    if (_selectedPageIndex == 1) {
      activeScreen = const ShortsScreen();
    }
    if (_selectedPageIndex == 2) {
      activeScreen = CreateSheet();
    }
    if (_selectedPageIndex == 3) {
      activeScreen = const SubscriptionsScreen();
    }
    if (_selectedPageIndex == 4) {
      activeScreen = const LibraryScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(children: [
            const Image(
              image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/thumbnails/023/986/704/small/youtube-logo-youtube-logo-transparent-youtube-icon-transparent-free-free-png.png'),
              width: 50,
              height: 50,
            ),
            const Text(
              'YouTube',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: const Text(
                            'Connect to a device',
                            style: TextStyle(color: Colors.white),
                          ),
                          content: SizedBox(
                            height: 110,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'No device found',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.tv_rounded),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Link with TV Code',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.info_outline),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Learn more',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ));
              },
              icon: const Icon(Icons.wifi_tethering),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const NotifScreen()));
              },
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(51, 26, 107, 68),
                  borderRadius: BorderRadius.circular(90),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => AccountsScreen()));
                    },
                    child: const Text('P',
                        style: TextStyle(color: Colors.white, fontSize: 15))))
          ]),
        ),
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 25,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.view_headline_sharp,
                color: Colors.white,
                size: 25,
              ),
              label: 'Shorts'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 40,
              ),
              label: 'Create'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions_outlined,
                color: Colors.white,
                size: 25,
              ),
              label: 'Subscriptions'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library_outlined,
                color: Colors.white,
                size: 25,
              ),
              label: 'Library'),
        ],
      ),
    );
  }
}
