import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(244, 252, 252, 252),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Dashboard",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(197, 0, 0, 0)),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Start in 5 minutes",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 25),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0.01, vertical: 0.01),
                      decoration: const BoxDecoration(
                          color: Color(0xFF2F00F2),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(children: [
                        const Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "09:45 JOIN",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular((15)))),
                              height: 70,
                              padding: const EdgeInsets.only(right: 14),
                              margin: const EdgeInsets.only(
                                  top: 2, bottom: 2, right: 2),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Resume consultation",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18),
                                        ),
                                        Row(
                                          children: const [
                                            Icon(Icons.access_time),
                                            Text("30 min"),
                                            Icon(Icons.person_2_outlined),
                                            Text("30 min")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Color(0xFF2F00F2),
                                  )
                                ],
                              )),
                        ),
                      ]),
                    ),
                    const Text(
                      "Revenue",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      width: 360,
                      height: 700,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "PAID TO YOU",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "THIS MONTHS",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "\$15,000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 30),
                                      ),
                                      Text(
                                        "\$13K LAST MONTHS",
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 130,
                                  child: VerticalDivider(
                                    color: Colors.black12,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "THIS MONTHS",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "\$72,000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 30),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              height: 1,
                              thickness: 1,
                              color: Colors.black12,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "OUTSTANDING PAYMENTS",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "PENDING PAYOUT",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "\$6,000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 30),
                                          ),
                                          Icon(
                                            Icons.warning_rounded,
                                            color: Colors.black26,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 130,
                                  child: VerticalDivider(
                                    color: Colors.black12,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "UNPAID INVOICES",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "\$8,000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 30),
                                          ),
                                          Icon(
                                            Icons.warning_rounded,
                                            color: Colors.black26,
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "\$3K OVERDUE",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              height: 1,
                              thickness: 1,
                              color: Colors.black12,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "LIFETIME SERVICES BREAKDOWN",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 10),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blueAccent,
                                        radius: 60,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 40,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: SizedBox(
                                      height: 100,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          grahpItem(Colors.amber, "30%",
                                              ' Interview prep'),
                                          grahpItem(Colors.blueAccent, "20%",
                                              ' Ongoing edcation..'),
                                          grahpItem(Colors.black38, "15%",
                                              ' Other services'),
                                        ],
                                      ),
                                    ))
                                  ]),
                            ),
                            const Divider(
                              height: 1,
                              thickness: 1,
                              color: Colors.black12,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(360, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  backgroundColor: const Color(
                                      0xFF2F00F2), // Background color
                                ),
                                onPressed: () => {},
                                child: const Text(
                                  "Create invoice",
                                  style: TextStyle(fontSize: 20),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            OutlinedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(360, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                onPressed: () => {},
                                child: const Text(
                                  "View all invoice",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black87),
                                )),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Clients",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      width: 360,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      child: Column(
                                        children: const [
                                          Text(
                                            "CLIENTS COUNT",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "200",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 30),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 130,
                                      child: VerticalDivider(
                                        color: Colors.black12,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      child: Column(
                                        children: const [
                                          Text(
                                            "AVG SESSIONS/CLIENT",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 30),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.black12,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "TOP 5 COUNT",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          color: Colors.black54),
                                    ),
                                    Text(
                                      "SESSINS",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          color: Colors.black54),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://picsum.photos/seed/picsum/200/300'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Alan Cooper",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Text(
                                      "30",
                                      style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://picsum.photos/seed/picsum/200/300'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Alan Cooper",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Text(
                                      "30",
                                      style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://picsum.photos/seed/picsum/200/300'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Alan Cooper",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Text(
                                      "30",
                                      style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://picsum.photos/seed/picsum/200/300'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Alan Cooper",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Text(
                                      "30",
                                      style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://picsum.photos/seed/picsum/200/300'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Alan Cooper",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Text(
                                      "30",
                                      style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ])),
                    )
                  ]),
            ),
          ),
        ));
  }
}

Widget grahpItem(Color color, var text1, text2) {
  return Row(
    children: [
      Icon(
        Icons.circle,
        color: color,
        size: 7,
      ),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: "  " + text1,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            TextSpan(
                text: text2,
                style: const TextStyle(
                  color: Colors.black54,
                )),
          ],
        ),
      ),
    ],
  );
}
