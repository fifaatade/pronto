import 'package:flutter/material.dart';
import 'package:pronto/businessplan/paiement_choice.dart';

class RegisterPlan extends StatefulWidget {
  const RegisterPlan({super.key});

  @override
  State<RegisterPlan> createState() => RegisterPlanState();
}

class RegisterPlanState extends State<RegisterPlan> {
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
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 24),
                decoration: BoxDecoration(
                    color: const Color(0XFFE9E6E0),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/images/plancar.png'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 23),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: '50,000 ', // Texte de base
                                  style: TextStyle(
                                      fontSize: 46,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'FCFA', // Texte stylisé
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                'Forfait Essentiel',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                minTileHeight: 10,
                                leading: Icon(
                                  Icons.check,
                                ),
                                title: Text(
                                  'Nombre de trajets inclus',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(
                                  '15 trajets par mois',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                minTileHeight: 10,
                                leading: Icon(
                                  Icons.check,
                                ),
                                title: Text(
                                  'Type de véhicule',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(
                                  'Berline standard',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                minTileHeight: 10,
                                leading: Icon(
                                  Icons.check,
                                ),
                                title: Text(
                                  'Zone de couverture',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(
                                  'Zone urbaine principale',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                minTileHeight: 10,
                                leading: Icon(
                                  Icons.check,
                                ),
                                title: Text(
                                  'Service prioritaire',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(
                                  'Réservation prioritaire avec un délai de réponse garanti de 10 minutes',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
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
                                    setState(() {});
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
                                      'Je m’abonne',
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
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 16.0, horizontal: 16.0), // EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0XFFCFCECE), width: 1),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        width: 72,
                        height: 6,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0XFFCFCECE), width: 3),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Flexible(
                          child: Text(
                        'Information de l’entreprise',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: 'Poppins'),
                      ))
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    height: 1,
                    color: Color(0XFFE4E4E4),
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    children: [
                      Text(
                        'Nom de l’entreprise',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Nom de l’entreprise',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: const Icon(Icons.location_city_outlined),
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
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Secteur d’activité',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Secteur d’activité',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: const Icon(Icons.location_city_outlined),
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
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'RCCM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Ex: ABC2018/AB',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: const Icon(Icons.description_outlined),
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
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'IFU',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Ex: 12309745',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: const Icon(Icons.description_outlined),
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
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Nombre de personnel',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Ex: 12',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: const Icon(Icons.description_outlined),
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
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      // Début de la sélection
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const PaiementChoice(),
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
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
