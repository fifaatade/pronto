import 'package:flutter/material.dart';
import 'package:pronto/prontoschool/my_subs.dart';
import 'package:pronto/reservations/choose_destination.dart';

import 'package:pronto/reservations/index.dart';

class ProntoSchoolRecap extends StatefulWidget {
  const ProntoSchoolRecap({super.key});

  @override
  State<ProntoSchoolRecap> createState() => _ProntoSchoolRecapState();
}

class _ProntoSchoolRecapState extends State<ProntoSchoolRecap> {
  List schedules = [
    {
      'day': 'Lundi',
      "hours": [
        {"start": "08 : 00", "end": "08 : 00"},
        {"start": "09 : 00", "end": "09 : 00"}
      ]
    },
    {
      'day': 'Mardi',
      "hours": [
        {"start": "09 : 00", "end": "09 : 00"},
        {"start": "10 : 00", "end": "10 : 00"}
      ]
    },
    {
      'day': 'Mercredi',
      "hours": [
        {"start": "10 : 00", "end": "10 : 00"},
        {"start": "11 : 00", "end": "11 : 00"}
      ]
    },
  ];
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Emploi du temps',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                color: Color(0XFF000000)),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Image.asset(
                            'assets/images/CalendarPlus.png',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Quand souhaitez-vous partir ?',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                color: Color(0XFF000000)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/PencilSimpleLine.png',
                    width: 26,
                    height: 26,
                  )
                ],
              ),
              ...schedules
                  .map(
                    (schedule) => Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide()),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${schedule['day']}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            ...schedule['hours'].map(
                              (e) => Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(width: 2))),
                                        child: Text(
                                          '${e['start']}',
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Text(' - '),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(width: 2))),
                                        child: Text(
                                          '${e['end']}',
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
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
                          builder: (context) => const MySubs(),
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
                          'Confirmer',
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
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
