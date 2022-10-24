import 'package:flutter/material.dart';
import 'package:imobis/contants.dart';
import 'package:imobis/models/onboarding_content_model.dart';
import 'package:imobis/screens/home_screen.dart';
import 'package:imobis/screens/login_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          contents[i].image!,
                          height: 300,
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            contents[i].title!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: title,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            contents[i].description!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: darkGrey,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: darkGrey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        child: const Text(
                          "Pular",
                          style: TextStyle(
                            color: lightTypography,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (c) {
                                return const LoginPageWidget();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: lightBlue,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Expanded(
                        child: TextButton(
                          child: Text(
                            currentIndex == contents.length - 1
                                ? "Continuar"
                                : "Próximo",
                            style: const TextStyle(
                              color: lightTypography,
                            ),
                          ),
                          onPressed: () {
                            if (currentIndex == contents.length - 1) {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (c) {
                                    return const LoginPageWidget();
                                  },
                                ),
                              );
                            }
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.bounceIn,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: currentIndex == index
          ? BoxDecoration(
              color: lightBlue,
              borderRadius: BorderRadius.circular(20.0),
            )
          : BoxDecoration(
              color: darkGrey,
              borderRadius: BorderRadius.circular(20.0),
            ),
    );
  }
}
