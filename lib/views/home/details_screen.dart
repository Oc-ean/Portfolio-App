import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hng_tasks/constants/theme.dart';
import 'package:hng_tasks/views/home/url_preview_screen.dart';

import '../../constants/strings.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          bioTile(size, themeData),
          hobbyTile(size, themeData),
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
                horizontal: size.width * .03, vertical: 10),
            width: size.width,
            decoration: BoxDecoration(
              color: AppTheme.darkTheme.cardColor,
              borderRadius: BorderRadius.circular(21),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  myContact,
                  style:
                      themeData.textTheme.displayLarge!.copyWith(fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                contactTile(title: email, text: myDetails.mail),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                contactTile(
                    title: gitHub,
                    text: gitHubUrl,
                    textColor: Colors.blue,
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (_) =>
                              UrlPreviewScreen(url: gitHubUrl, text: gitHub),
                        ),
                      );
                    }),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                contactTile(
                  title: twitter,
                  text: twitterUrl,
                  textColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (_) =>
                            UrlPreviewScreen(url: twitterUrl, text: twitter),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container bioTile(Size size, ThemeData themeData) {
    return Container(
      margin: EdgeInsets.all(size.height * .01),
      padding: EdgeInsets.symmetric(horizontal: size.width * .03, vertical: 10),
      width: size.width,
      decoration: BoxDecoration(
        color: AppTheme.darkTheme.cardColor,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bio,
            style: themeData.textTheme.displayLarge!.copyWith(fontSize: 23),
          ),
          Text(
            myBio,
            style: themeData.textTheme.bodyMedium!.copyWith(
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }

  Container hobbyTile(Size size, ThemeData themeData) {
    return Container(
      margin: EdgeInsets.all(size.height * .01),
      padding: EdgeInsets.symmetric(horizontal: size.width * .03, vertical: 10),
      width: size.width,
      decoration: BoxDecoration(
        color: AppTheme.darkTheme.cardColor,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            myHobbies,
            style: themeData.textTheme.displayLarge!.copyWith(fontSize: 23),
          ),
          ...List.generate(
            myDetails.hobbies.length,
            (index) => Text(
              myDetails.hobbies[index],
              style: themeData.textTheme.bodyMedium!.copyWith(
                fontSize: 17,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget contactTile(
      {required String title,
      required String text,
      Color? textColor,
      VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            '$title :',
            style: const TextStyle(fontSize: 17),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 15, color: textColor != null ? textColor : null),
          ),
        ],
      ),
    );
  }
}
