import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hng_tasks/screens/git_hub_view_web.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HNG Task'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/me.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Name :',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '  Olatunbosun Micheal',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: 160,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                      builder: (BuildContext context) {
                        return const GitHubWebView(
                          url: "https://github.com/Oc-ean",
                        );
                      },
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.blue),
                  child: const Row(
                    children: [
                      Text('Open GitHub'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.open_in_new),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
