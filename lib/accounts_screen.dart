import 'package:flutter/material.dart';
import 'package:ytclone/accounts_widget.dart';
import 'package:ytclone/options.dart';

class AccountsScreen extends StatelessWidget {
  AccountsScreen({super.key});

  final List<Options> accoptions = const [
    Options(
      text: 'Your Channel',
      icon: Icon(Icons.person, size: 25),
    ),
    Options(
      text: 'Turn on Incognito',
      icon: Icon(Icons.perm_contact_calendar_rounded, size: 25),
    ),
    Options(
      text: 'Add Account',
      icon: Icon(Icons.person_add, size: 25),
    ),
    Options(
      text: 'Get YouTube Premium',
      icon: Icon(Icons.play_arrow, size: 25),
    ),
    Options(
      text: 'Purchases and memberships',
      icon: Icon(Icons.currency_rupee_rounded, size: 25),
    ),
    Options(
      text: 'Time Watched',
      icon: Icon(Icons.bar_chart_outlined, size: 25),
    ),
    Options(
      text: 'Your data in YouTube',
      icon: Icon(Icons.gpp_good_sharp, size: 25),
    ),
    Options(
      text: 'Settings',
      icon: Icon(Icons.settings, size: 25),
    ),
    Options(
      text: 'Help and Feedback',
      icon: Icon(Icons.help, size: 25),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 10, 40),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(51, 26, 107, 68),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'P',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Column(
                          children: [
                            Text(
                              'Prateek Agrawal',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              '@prateekagrawal24576',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Manage your Google Account',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      )
                    ],
                  )
                ],
              ),
              for (final option in accoptions)
                AccountsWidgets(text: option.text, texticon: option.icon),
            ],
          )),
    );
  }
}
