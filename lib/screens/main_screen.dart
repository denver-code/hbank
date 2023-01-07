import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hbank/internal/services/hex_to_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List transactions = [
    {
      "id": "asdadsads",
      "title": "Dad",
      "alias": "Work",
      "date": "7 Jan 2023",
      "type": "outcome",
      "value": "59.99"
    },
    {
      "id": "asdadsad1s",
      "title": "Google",
      "alias": "Salary",
      "date": "6 Jan 2023",
      "type": "income",
      "value": "4,500"
    },
    {
      "id": "asdadsad2s",
      "title": "David",
      "alias": "Work",
      "date": "5 Jan 2023",
      "type": "outcome",
      "value": "479"
    },
    {
      "id": "as5adsads",
      "title": "Test",
      "alias": "Development",
      "date": "2 Jan 2023",
      "type": "income",
      "value": "8"
    },
    {
      "id": "asdad3sads",
      "title": "Test",
      "alias": "Development",
      "date": "2 Jan 2023",
      "type": "otcome",
      "value": "8"
    },
    {
      "id": "a23sdadsads",
      "title": "Test",
      "alias": "Development",
      "date": "2 Jan 2023",
      "type": "income",
      "value": "8"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/img/avatar.png",
                            width: 50,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Ihor Saveko",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Good Morning",
                                style: TextStyle(
                                  color: HexColor.fromHex("#9E9E9E"),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () => print("NOTIFICATION MENU"),
                        child: Image.asset(
                          "assets/img/notification.png",
                          width: 40,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Total Balance",
                    style: TextStyle(
                      color: HexColor.fromHex("#9E9E9E"),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "£42,295.00 GBP",
                    style: TextStyle(
                        color: HexColor.fromHex("#BEFF00"),
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Divider(color: HexColor.fromHex("#9E9E9E")),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => print("TRANSFER MENU"),
                            child: Image.asset(
                              "assets/img/transfer.png",
                              width: 65,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            "Fund Transfer",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => print("ADD MENU"),
                            child: Image.asset(
                              "assets/img/add.png",
                              width: 65,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            "Add Money",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => print("MORE MENU"),
                            child: Image.asset(
                              "assets/img/more.png",
                              width: 65,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            "More",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Recent Activity",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: HexColor.fromHex("#1B1B1B"),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                              "This Day",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: HexColor.fromHex("#BEFF00"),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                              "This Week",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: HexColor.fromHex("#1B1B1B"),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                              "This Month",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: HexColor.fromHex("#1B1B1B"),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                              "6 Month",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: HexColor.fromHex("#1B1B1B"),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                              "Year",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(transactions.length, (index) {
                            final item = transactions[index];
                            return Dismissible(
                              key: Key(item["id"]),
                              onDismissed: (direction) {
                                setState(() {
                                  transactions.removeAt(index);
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Deleted')));
                              },
                              background: Container(color: Colors.red),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            (() {
                                              if (transactions[index]["type"] ==
                                                  "outcome") {
                                                return "assets/img/outcome.png";
                                              } else {
                                                return "assets/img/income.png";
                                              }
                                            }()),
                                            width: 48,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "${(() {
                                                      if (transactions[index]
                                                              ["type"] ==
                                                          "outcome") {
                                                        return "To";
                                                      } else {
                                                        return "From";
                                                      }
                                                    }())} ${transactions[index]["title"]}",
                                                    style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Image.asset(
                                                    "assets/img/dot.png",
                                                    width: 5,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    transactions[index]
                                                        ["alias"],
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      color: HexColor.fromHex(
                                                          "#9E9E9E"),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                transactions[index]["date"],
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: HexColor.fromHex(
                                                      "#9E9E9E"),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      (() {
                                        if (transactions[index]["type"] ==
                                            "outcome") {
                                          return Text(
                                            '-£${transactions[index]["value"]}',
                                            style: const TextStyle(
                                              fontSize: 17,
                                              color: Colors.red,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          );
                                        } else {
                                          return Text(
                                            '+£${transactions[index]["value"]}',
                                            style: const TextStyle(
                                              fontSize: 17,
                                              color: Colors.green,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          );
                                        }
                                      }())
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Divider(color: HexColor.fromHex("#9E9E9E")),
                                ],
                              ),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 80,
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: HexColor.fromHex("#161614").withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, left: 24, right: 24),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: HexColor.fromHex("#BEFF00"),
                                  ),
                                ),
                                Image.asset(
                                  "assets/img/home.png",
                                  width: 28,
                                ),
                                const Text(
                                  "Home",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: HexColor.fromHex("#BEFF00")
                                        .withOpacity(0),
                                  ),
                                ),
                                Image.asset(
                                  "assets/img/card.png",
                                  width: 28,
                                ),
                                const Text(
                                  "Card",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: HexColor.fromHex("#BEFF00")
                                        .withOpacity(0),
                                  ),
                                ),
                                Image.asset(
                                  "assets/img/transaction.png",
                                  width: 28,
                                ),
                                const Text(
                                  "Transaction",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: HexColor.fromHex("#BEFF00")
                                        .withOpacity(0),
                                  ),
                                ),
                                Image.asset(
                                  "assets/img/profile.png",
                                  width: 28,
                                ),
                                const Text(
                                  "Profile",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
