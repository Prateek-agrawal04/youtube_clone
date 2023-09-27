import 'package:flutter/material.dart';

class CreateSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.view_headline_sharp),
              const SizedBox(
                width: 7,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Create a Short',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(Icons.upgrade_outlined),
              const SizedBox(
                width: 7,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Upload a Video',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(Icons.wifi_tethering),
              const SizedBox(
                width: 7,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Go Live',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(Icons.post_add_outlined),
              const SizedBox(
                width: 7,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Create a Post',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
