import 'package:flutter/material.dart';
import 'package:pronto/reservations/choose_destination.dart';
import 'package:pronto/reservations/course_recap.dart';
import 'package:pronto/reservations/index.dart';

class ReservationRecap extends StatefulWidget {
  const ReservationRecap({super.key});

  @override
  State<ReservationRecap> createState() => _ReservationRecapState();
}

class _ReservationRecapState extends State<ReservationRecap> {
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
                  "Récapitulatifs",
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
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0XFFF0EEEA),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/classic_car.png",
                      width: 82.79,
                      height: 34,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Classic",
                                        style: TextStyle(
                                            color: Color(0XFF221F1F),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1000 F - 2000 F",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/PencilSimpleLine.png',
                          width: 26,
                          height: 26,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
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
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: const Color(0XFFF0EEEA),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Départ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            color: Color(0XFF7A7474)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            const ChooseDestination(),
                                      ));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Flexible(
                                          child: Text(
                                            'St Jean, Womey, Abomey Calavi',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                color: Color(0XFF221F1F)),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Image.asset(
                                          'assets/images/PencilSimpleLine.png',
                                          width: 26,
                                          height: 26,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const ChooseDestination()));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: const Color(0XFFF0EEEA),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Arrivée',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              color: Color(0XFF7A7474)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Flexible(
                                          child: Text(
                                            'Super marché dupon',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                color: Color(0XFF221F1F)),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Image.asset(
                                          'assets/images/PencilSimpleLine.png',
                                          width: 26,
                                          height: 26,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0XFFF0EEEA),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6)),
                        color: Color(0XFFE9E6E0),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Row(
                        children: [
                          Text(
                            'Prise en charge',
                            style: TextStyle(
                                color: Color(0XFF221F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                '21 Sep 2024',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Image.asset(
                            'assets/images/PencilSimpleLine.png',
                            width: 26,
                            height: 26,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                '20h : 05',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Image.asset(
                            'assets/images/PencilSimpleLine.png',
                            width: 26,
                            height: 26,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  // Début de la sélection
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const IndexReservation(),
                        ));
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
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Réservez',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
