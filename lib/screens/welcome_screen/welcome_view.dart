import 'package:flutter/material.dart';
import 'package:flutter_project/screens/Home_Screen/home_screen.dart';
import 'package:flutter_project/screens/welcome_screen/startcontent.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  int activePage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: screenHeight,
        width: screenwidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff2A4BA0),
        ),
        child: Column(
          children: [
            Container(
              // color: Colors.red,
              height: screenHeight / 2.5,
              width: screenwidth,
              margin: const EdgeInsets.fromLTRB(42, 33, 39, 0),
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      activePage = index;
                    });
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const Text(
                          "Your holiday shopping delivered to Screen",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              color: Color(0xffFAFBFD)),
                        ),
                        Row(
                          children: [
                            Text(slideHead[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                    color: Color(0xffFAFBFD))),
                            SizedBox(
                              width: screenwidth / 10,
                            ),
                            SvgPicture.asset("assets/images/Emoji.svg"),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight / 40,
                        ),
                        Text(
                          slidePara[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xffB2BBCE),
                          ),
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: screenHeight / 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Row(
                children: List.generate(
                    2,
                    (index) => Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            height: activePage == index ? 7 : 5,
                            width: activePage == index ? 45 : 25,
                            decoration: BoxDecoration(
                                color: activePage == index
                                    ? const Color(0xffF8F9FB)
                                    : const Color.fromARGB(197, 140, 174, 241),
                                borderRadius: BorderRadius.circular(2)),
                          ),
                        )),
              ),
            ),
            const Spacer(),
            Container(
                // color: Colors.green,
                height: screenHeight / 3,
                width: screenwidth,
                child: Image.asset("assets/images/welcome_image.jpeg") ),
            Container(
                height: screenHeight / 12,
                width: screenwidth / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFAFBFD),
                ),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                // padding: EdgeInsets.fromLTRB(10, 10, 40, 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen() ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Get Started",
                        style: TextStyle(
                          color: Color(0xff1E222B),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset("assets/images/Arrow.svg"),
                    ],
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
