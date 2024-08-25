import 'package:flutter/material.dart';
import 'package:pronto/home.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({super.key});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF0EEEA),
        elevation: 0,
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
                  "Détails du tarif",
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
      body: SingleChildScrollView(
        child: Column(children: [
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
                        child: const Row(
                          children: [
                            Text(
                              "Classic",
                              style: TextStyle(
                                  color: Color(0XFF221F1F),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: 'Poppins'),
                            ),
                            Text(
                              " (sans clim)",
                              style: TextStyle(
                                  color: Color(0XFF221F1F),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  fontFamily: 'Poppins'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      size: 19.5,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
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
                            'Les détails de course',
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Distance de ramassage',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Text(
                            '0.76 km',
                            style: TextStyle(
                                color: Color(0XFF221F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.map_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Distance parcourue',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Text(
                            '12.76 km',
                            style: TextStyle(
                                color: Color(0XFF221F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Temps total',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Text(
                            '50 min',
                            style: TextStyle(
                                color: Color(0XFF221F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
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
                            'Les détails de facture',
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.map_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Distance de base',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Text(
                            '400 F',
                            style: TextStyle(
                                color: Color(0XFF221F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.map_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Coût de la distance',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Text(
                            '1 576 F',
                            style: TextStyle(
                                color: Color(0XFF221F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.map_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Coût par minute',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Text(
                            '350 F',
                            style: TextStyle(
                                color: Color(0XFF221F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.map_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Arrondi ( à 10 près )',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Text(
                            '-2 F',
                            style: TextStyle(
                                color: Color(0XFF221F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: const Color(0XFF62524A),
                    borderRadius: BorderRadius.circular(2)),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Montant de la course',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '3 000 FCFA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              const SizedBox(
                height: 20,
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
                            'Les détails de paiement',
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.money_outlined,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Espèces',
                                style: TextStyle(
                                    color: Color(0XFF221F1F),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Text(
                            '3 000 F',
                            style: TextStyle(
                                color: Color(0XFF221F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
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
                                builder: (context) => const Home(),
                              ));
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor:
                            Colors.white, // couleur de fond du bouton
                        // Fin de la sélection
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                            side: const BorderSide(
                              color: Color(0XFFDBD6CD),
                            )),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 14),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Fermer',
                          style: TextStyle(
                            color: Colors.black,
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
            ]),
          )
        ]),
      ),
    );
  }
}
