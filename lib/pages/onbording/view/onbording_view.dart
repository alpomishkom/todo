import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../welcome_to_todyapp  /view/welcome_to_todyapp.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  PageController _controller = PageController();
  int curret = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: double.infinity,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (int value) {
                      setState(() {
                        curret = value;
                      });
                    },
                    controller: _controller,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 1,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color(0xFF24A19C),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/images/image_2024-01-22_04-54-24.png"),
                                width: 80,
                              ),
                              Text(
                                "Todyapp",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                              Gap(12),
                              Text(
                                "The best to do list application for you",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 1,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/images/Onboarding Image.png"),
                              ),
                              Text(
                                "Your convenience in \n making a todo list",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Gap(12),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: Text(
                                  "Here's a mobile platform that helps you create taskor \n to list so that it can help you in every \n jobeasier and faster.",
                                  style: TextStyle(
                                    color: Color(0xFF767E8C),
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 1,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/images/Onboarding Image.png"),
                              ),
                              Text(
                                "Find the practicality in \n making your todo list",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Gap(12),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: Text(
                                  "Easy-to-understand user interface  that makes you \n more comfortable when you want to create a task orto do list, Todyapp can also improve productivity",
                                  style: TextStyle(
                                    color: Color(0xFF767E8C),
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        3,
                        (index) => TweenAnimationBuilder(
                          curve: Curves.elasticInOut,
                          tween: Tween(end: 1.0, begin: 0.0),
                          duration: Duration(seconds: 1),
                          builder: (value, context, child) {
                            return Transform.scale(
                              scaleX: context,
                              scaleY: context,
                              child: Container(
                                width: index == curret ? 30 : 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: index == curret
                                      ? Color(0xFF24A19C)
                                      : Color(0xFFCBF1F0),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.9),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: curret == 0 ? Text("") : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                            double.maxFinite,
                            60,
                          ),
                          backgroundColor: Color(0xFF24A19C)),
                      onPressed: () {
                        setState(() {});
                        curret++;
                        if (curret < 3) {
                          _controller.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Welcome_to_todyapp(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
