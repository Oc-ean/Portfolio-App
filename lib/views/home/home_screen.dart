import 'package:flutter/material.dart';
import 'package:hng_tasks/constants/colors.dart';
import 'package:hng_tasks/constants/strings.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _CvHomeScreeState();
}

class _CvHomeScreeState extends State<HomeScreen> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void nextPage(int page) {
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: [
            buildColumn(size, themeData),
            const DetailsScreen(),
          ],
        ),
      ),
    );
  }

  Widget buildColumn(Size size, ThemeData themeData) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(size.height * .01),
              decoration: BoxDecoration(
                  color: themeData.cardColor, shape: BoxShape.circle),
              child: CircleAvatar(
                radius: size.height * .15,
                backgroundColor: appPrimaryColor.withOpacity(0.1),
                backgroundImage: AssetImage(profileImageUrl),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              myDetails.name.toString(),
              style: themeData.textTheme.displayLarge!.copyWith(fontSize: 30),
            ),
          ),
          SizedBox(
            height: size.height * .01,
          ),
          skillsList(size, themeData),
          SizedBox(
            height: size.height * .05,
          ),
          Column(
            children: List.generate(
              myDetails.info.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Column(
                  children: [
                    Text(
                      myDetails.info[index].name,
                      style: themeData.textTheme.displaySmall!
                          .copyWith(fontSize: 17, letterSpacing: 0.5),
                    ), // Text

                    const SizedBox(
                      height: 10,
                    ),
                    LinearPercentIndicator(
                      lineHeight: size.height * .01,
                      width: size.width * .8,
                      alignment: MainAxisAlignment.center,
                      barRadius: const Radius.circular(50),
                      percent: myDetails.info[index].progress,
                      backgroundColor: Colors.indigo.withOpacity(0.2),
                      progressColor: Colors.indigo,
                    ),
                  ], // SizedBox
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          IconButton(
            onPressed: () {
              nextPage(1);
            },
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: appDaRkColor,
              child: const Icon(
                Icons.arrow_downward_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  Wrap skillsList(Size size, ThemeData themeData) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      spacing: size.width * .03,
      runSpacing: size.width * .03,
      children: [
        ...List.generate(
          myDetails.info.length,
          (index) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.indigo,
            ),
            child: Text(
              myDetails.info[index].name,
              style: themeData.textTheme.displayMedium!.copyWith(fontSize: 17),
            ),
          ),
        ),
      ],
    );
  }
}
