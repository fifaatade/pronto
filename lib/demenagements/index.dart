import 'package:flutter/material.dart';

import 'package:pronto/demenagements/course_recap.dart';
import 'package:pronto/demenagements/my_reservations.dart';

class IndexDemenagement extends StatefulWidget {
  const IndexDemenagement({super.key});

  @override
  State<IndexDemenagement> createState() => _IndexDemenagementState();
}

class _IndexDemenagementState extends State<IndexDemenagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
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
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(
            height: 27,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            color: Colors.white,
            child: Center(
              child: Image.asset(
                'assets/images/demenagement.png',
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              ListTile(
                dense: true,
                leading: Container(
                  width: 36,
                  height: 36,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0XFFE9E6E0),
                  ),
                  child: const Icon(
                    Icons.hourglass_bottom_outlined,
                    size: 16,
                  ),
                ),
                title: const Text(
                  'Temps d’attente',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                subtitle: const Text(
                  "Temps d’attente supplémentaire inclus pour retrouver votre chauffeur",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
              ListTile(
                dense: true,
                leading: Container(
                  width: 36,
                  height: 36,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0XFFE9E6E0),
                  ),
                  child: const Icon(
                    Icons.event_busy_outlined,
                    size: 16,
                  ),
                ),
                title: const Text(
                  'Annulation',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                subtitle: const Text(
                  "Annulation sans frais jusqu’à 60 minutes à l’avance",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    // Début de la sélection
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CourseRecap(),
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
                            'Trouvez un camion',
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
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyReservations(),
                          ));
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
                            'Mes réservations',
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
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
