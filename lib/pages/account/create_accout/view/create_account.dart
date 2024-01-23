import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hive/hive.dart';
import 'package:to_du/pages/account/create_accout/cantrollor/conttrolor.dart';

import '../../../bottomNavigatorBar/bottomNavigatorBar_view.dart';

class CreateAcountView extends StatefulWidget {
  const CreateAcountView({super.key});

  @override
  State<CreateAcountView> createState() => _CreateAcountViewState();
}

class _CreateAcountViewState extends State<CreateAcountView> {
  bool isValue = true;
  var email = TextEditingController();
  var passworld = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Gap(20),
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Text("Your work faster and structured with Todyapp"),
              Gap(48),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  Gap(12),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF6F7F9),
                      hintText: 'name@example.com',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                  Gap(24),
                  Text(
                    "Passworld",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  Gap(12),
                  TextFormField(
                    controller: passworld,
                    obscureText: isValue,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isValue = !isValue;
                          });
                        },
                        icon: isValue
                            ? Icon(CupertinoIcons.eye_slash)
                            : Icon(Icons.remove_red_eye),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF6F7F9),
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      double.maxFinite,
                      60,
                    ),
                    backgroundColor: Color(0xFF24A19C)),
                onPressed: () async {
                  Box box = await Hive.box("box");
                  box.put("email", email.text);
                  box.put("passworld", passworld.text);
                  box.put("isRegister", true);
                  User? user;
                  if (email.text.isNotEmpty && passworld.text.isNotEmpty) {
                    user =
                        await FibaBesLogin.register(email.text, passworld.text);
                    if (user != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Sacsesfull"),
                        ),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNaviGatorBarView(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("user null"),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("malumotdi to'ldrib chiqing"),
                      ),
                    );
                  }
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
