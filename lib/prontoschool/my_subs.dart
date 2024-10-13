import 'package:flutter/material.dart';
import 'package:pronto/prontoschool/pronto_school_create.dart';
import 'package:pronto/reservations/choose_destination.dart';
import 'package:pronto/reservations/course_recap.dart';
import 'package:pronto/reservations/reservation_detail.dart';

class MySubs extends StatefulWidget {
  const MySubs({super.key});

  @override
  State<MySubs> createState() => _MySubsState();
}

class _MySubsState extends State<MySubs> with TickerProviderStateMixin {
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
              width: 55.5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Mes Abonnements",
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
                tabs: const <Widget>[
                  Tab(
                    text: "En cours",
                  ),
                  Tab(
                    text: "Passés",
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ...[1, 2, 3].map(
                (e) => Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0XFFF0EEEA),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  width: 28,
                                  height: 28,
                                  padding: const EdgeInsets.all(3),
                                  child: const Center(
                                    child: Icon(
                                      Icons.location_on_rounded,
                                      size: 20,
                                      color: Color(0XFFec1c24),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFFCD9DB),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                const SizedBox(height: 16),
                                Image.asset('assets/images/line.png'),
                                const SizedBox(height: 16),
                                Container(
                                  width: 28,
                                  height: 28,
                                  padding: const EdgeInsets.all(3),
                                  child: const Icon(
                                    Icons.location_on_rounded,
                                    size: 20,
                                    color: Color(0XFF0b7b69),
                                  ),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFA4F4E7),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 10,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFF0EEEA),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: const Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Départ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                color: Color(0XFF7A7474)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              'St Jean, Womey, Abomey Calavi',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0XFF221F1F)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 26),
                                Container(
                                  padding: const EdgeInsets.only(top: 8),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFF0EEEA),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: const Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Arrivée',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                color: Color(0XFF7A7474)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              'Super marché dupon',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0XFF221F1F)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Divider(
                        color: Color(0XFFD7D2C7),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/Moneydark.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '3 000 F',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/Users2.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '01 élèves',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              clipBehavior: Clip.none,
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.white,
                                // Fin de la sélection
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  'Détails',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  // Début de la sélection
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ProntoSchoolReserve(),
                              ));
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color(
                            0xFFF00020), // couleur de fond du bouton
                        // Fin de la sélection
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 14),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Nouvelle abonnement',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
