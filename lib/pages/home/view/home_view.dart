import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Today",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Best platform for creating to-do lists",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF767E8C),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.settings_solid),
              ),
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFF24A19C),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 126,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          TextFormField(
                                            decoration: InputDecoration(
                                              hintText: "eg : Meeting with client",
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                              ),
                                            ),
                                          ),
                                          Gap(8),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              hintText: "Description",
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                              ),
                                            ),
                                          ),
                                          Gap(16),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.asset("assets/icons/ms.svg"),
                                                  Gap(16),
                                                  InkWell(
                                                    onTap: () {
                                                      showModalBottomSheet(
                                                        constraints: BoxConstraints.loose(Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height * 2)),
                                                        context: context,
                                                        builder: (context) {
                                                          return Column(
                                                            mainAxisSize: MainAxisSize.max,
                                                            children: [
                                                              SizedBox(
                                                                child: SfDateRangePicker(
                                                                  onSelectionChanged:
                                                                      (DateRangePickerSelectionChangedArgs args) {
                                                                    // Handle date range selection
                                                                  },
                                                                  selectionMode:
                                                                  DateRangePickerSelectionMode.range,
                                                                ),
                                                              )
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: SvgPicture.asset(
                                                      "assets/icons/calendal.svg",
                                                    ),
                                                  ),
                                                  Gap(16),
                                                  SvgPicture.asset("assets/icons/soatd.svg"),
                                                  Gap(16),
                                                  SvgPicture.asset("assets/icons/bb.svg"),
                                                ],
                                              ),
                                              SvgPicture.asset("assets/icons/save.svg"),
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: SvgPicture.asset("assets/icons/add.svg"),
                            ),
                            Gap(12),
                            Text(
                              "Tap plus to create a new task",
                              style: TextStyle(
                                color: Color(0xFF3333333),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Gap(28),
                        Divider(),
                        Gap(8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add your task ',
                              style: TextStyle(fontSize: 12),
                            ),
                            Gap(12),
                            Text(
                              "Today . Mon 20 Jul 2022  ",
                              style: TextStyle(
                                color: Color(0xFF3333333),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
