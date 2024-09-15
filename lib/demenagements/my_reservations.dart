import 'package:flutter/material.dart';

import 'package:pronto/demenagements/demenagement_detail.dart';

class MyReservations extends StatefulWidget {
  const MyReservations({super.key});

  @override
  State<MyReservations> createState() => _MyReservationsState();
}

class _MyReservationsState extends State<MyReservations>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFECECED),
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 75.5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Mes réservations",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: Color(0XFF221F1F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TabBar(
                indicatorPadding: const EdgeInsets.all(5),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: const Color(0XFFDBD6CD),
                labelStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0XFFEC1C24),
                ),
                controller: _tabController,
                tabs: <Widget>[
                  const Tab(
                    text: "En cours",
                  ),
                  const Tab(
                    text: "Passés",
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Text(
                    'Aujourd’hui',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF221F1F),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: const Color(0XFFEEEEEE)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DemenagementDetail(),
                  ));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0XFFF0EEEA),
                    ),
                    child: ListTile(
                      minVerticalPadding: 0,
                      contentPadding: const EdgeInsets.all(0),
                      dense: true,
                      leading: Image.asset(
                        "assets/images/camion.png",
                        width: 82.79,
                        height: 34,
                      ),
                      title: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Camion",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF221F1F),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "N° 1542300",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF221F1F),
                            ),
                          )
                        ],
                      ),
                      subtitle: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0XFFE9E6E0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        margin: const EdgeInsets.only(top: 10),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('21 Sep 2024',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF221F1F),
                                    ))
                              ]),
                              Row(children: [
                                Icon(
                                  Icons.access_time,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('20h : 05',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF221F1F),
                                    ))
                              ]),
                            ]),
                      ),
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0XFFF0EEEA),
                  ),
                  child: ListTile(
                    minVerticalPadding: 0,
                    contentPadding: const EdgeInsets.all(0),
                    dense: true,
                    leading: Image.asset(
                      "assets/images/camion.png",
                      width: 82.79,
                      height: 34,
                    ),
                    title: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Camion ",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF221F1F),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "N° 1542300",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF221F1F),
                          ),
                        )
                      ],
                    ),
                    subtitle: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0XFFE9E6E0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      margin: const EdgeInsets.only(top: 10),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Icon(
                                Icons.calendar_month,
                                size: 12,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text('21 Sep 2024',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0XFF221F1F),
                                  ))
                            ]),
                            Row(children: [
                              Icon(
                                Icons.access_time,
                                size: 12,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text('20h : 05',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0XFF221F1F),
                                  ))
                            ]),
                          ]),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
