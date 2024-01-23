import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:to_du/pages/account/create_accout/view/create_account.dart';
import 'package:to_du/pages/account/welcome_back/view/login.dart';

class Welcome_to_todyapp extends StatefulWidget {
  const Welcome_to_todyapp({super.key});

  @override
  State<Welcome_to_todyapp> createState() => _Welcome_to_todyappState();
}

class _Welcome_to_todyappState extends State<Welcome_to_todyapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Welcome to ",
                      style: TextStyle(
                          color: Color(0xFF1B1C1F),
                          fontSize: 26,
                          fontWeight: FontWeight.w600)),
                  TextSpan(
                    text: " Todyapp",
                    style: TextStyle(
                        color: Color(0xFF24A19C),
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Spacer(),
            Image(image: AssetImage("assets/images/cr.png")),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginView(),
                    ),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF24A19C)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/massager.svg'),
                        Gap(10),
                        Text(
                          "Continue with email ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Color(0xFFE0E5ED),
                    ),
                  ),
                  Gap(10),
                  Text(
                    "or continue with",
                    style: TextStyle(
                      color: Color(0xFF767E8C),
                    ),
                  ),
                  Gap(10),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Color(0xFFE0E5ED),
                    ),
                  ),
                ],
              ),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 160,
                  height: 60,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF24A19C)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/facebook.svg'),
                        Gap(10),
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAcountView()));
                    ;
                  },
                  child: SizedBox(
                    width: 160,
                    height: 60,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFF24A19C)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/google.svg'),
                          Gap(10),
                          Text(
                            "Google ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
