import 'package:flutter/material.dart';

class NotifScreen extends StatelessWidget {
  const NotifScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.notifications,
                size: 100,
              ),
              const Text(
                'Your Notifications live here',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'Don\'t miss the latest videos',
                  style: TextStyle(color: Colors.white60),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Turn on Notifications',
                    style: TextStyle(fontSize: 10, color: Colors.blueAccent),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
