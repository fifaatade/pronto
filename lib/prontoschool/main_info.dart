import 'package:flutter/material.dart';
import 'package:pronto/prontoschool/pronto_school_create.dart';

class MainInfo extends StatefulWidget {
  const MainInfo({super.key});

  @override
  State<MainInfo> createState() => _MainInfoState();
}

class _MainInfoState extends State<MainInfo> {
  List schedules = [
    {
      'day': 'Lundi',
      "hours": [
        {"start": "08 : 00", "end": "08 : 00"}
      ]
    },
    {
      'day': 'Mardi',
      "hours": [
        {"start": "09 : 00", "end": "09 : 00"}
      ]
    },
    {
      'day': 'Mercredi',
      "hours": [
        {"start": "10 : 00", "end": "10 : 00"}
      ]
    },
    {
      'day': 'Jeudi',
      "hours": [
        {"start": "11 : 00", "end": "11 : 00"}
      ]
    },
    {
      'day': 'Vendredi',
      "hours": [
        {"start": "12 : 00", "end": "12 : 00"}
      ]
    },
    {
      'day': 'Samedi',
      "hours": [
        {"start": "13 : 00", "end": "13 : 00"}
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFFD5D4D4), width: 1),
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
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Divider(color: Color(0XFFECECED), thickness: 1),
                const SizedBox(
                  height: 17,
                ),
                const Row(
                  children: [
                    Text('Information du parent',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                  ],
                ),
                const Row(
                  children: [
                    Flexible(
                        child: Text(
                            'Vos informations pour enregistrer votre abonnement ',
                            style: TextStyle(
                                color: Color(0XFF7A7474),
                                fontSize: 14,
                                fontWeight: FontWeight.w400))),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Nom',
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFFCFCECE)),
                      prefixIcon: const Icon(Icons.person_2_outlined,
                          color: Color(0XFFCFCECE)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0XFFCFCECE), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0xFFF00020), width: 1.5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Prénom',
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFFCFCECE)),
                      prefixIcon: const Icon(Icons.person_2_outlined,
                          color: Color(0XFFCFCECE)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0XFFCFCECE), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0xFFF00020), width: 1.5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Numéro téléphone',
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFFCFCECE)),
                      prefixIcon: const Icon(Icons.phone_outlined,
                          color: Color(0XFFCFCECE)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0XFFCFCECE), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0xFFF00020), width: 1.5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text('Information de l’enfant ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                  ],
                ),
                const Row(
                  children: [
                    Flexible(
                        child: Text(
                            'Vos informations pour enregistrer votre abonnement ',
                            style: TextStyle(
                                color: Color(0XFF7A7474),
                                fontSize: 14,
                                fontWeight: FontWeight.w400))),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Nom',
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFFCFCECE)),
                      prefixIcon: const Icon(Icons.person_2_outlined,
                          color: Color(0XFFCFCECE)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0XFFCFCECE), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0xFFF00020), width: 1.5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Prénom',
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFFCFCECE)),
                      prefixIcon: const Icon(Icons.person_2_outlined,
                          color: Color(0XFFCFCECE)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0XFFCFCECE), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: Color(0xFFF00020), width: 1.5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    )),
                const SizedBox(
                  height: 36,
                ),
                ...schedules
                    .map(
                      (schedule) => Container(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide()),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.5, vertical: 12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '${schedule['day']}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Transform.scale(
                                      scale: 0.7,
                                      child: Switch(
                                        activeTrackColor:
                                            const Color(0XFFF00020),
                                        onChanged: (value) => {},
                                        value: true,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              ...schedule['hours'].map(
                                (e) => Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(bottom: 5),
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
                                      padding: const EdgeInsets.only(bottom: 5),
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
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              ElevatedButton(
                                clipBehavior: Clip.none,
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                  // Fin de la sélection
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'Ajouter des heures',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    // Début de la sélection
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProntoSchoolReserve(),
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
                            'Continuer',
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
                          Navigator.of(context).pop();
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
                            'Annuler',
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
                const SizedBox(
                  height: 26,
                ),
              ],
            ),
          ),
        ));
  }
}
