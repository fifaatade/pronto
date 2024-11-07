import 'package:flutter/material.dart';
import 'package:pronto/businessplan/dashboard/index.dart';
import 'package:pronto/businessplan/dashboard/menus.dart';

class PaiementChoice extends StatefulWidget {
  const PaiementChoice({super.key});

  @override
  State<PaiementChoice> createState() => _PaiementChoiceState();
}

class _PaiementChoiceState extends State<PaiementChoice> {
  int is_selected = 1;
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  vertical: 16.0), // EdgeInsets.all(16.0),
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Flexible(
                            child: Text(
                          'Choisir votre mode de paiement',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                        ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    height: 1,
                    color: Color(0XFFE4E4E4),
                  ),
                  const SizedBox(height: 25),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            is_selected = 1;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: is_selected == 1
                                ? const Color(0XFFF0EEEA)
                                : Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/wallet.png',
                                    width: 35,
                                    height: 33.6,
                                  ),
                                  const SizedBox(width: 16),
                                  const Text(
                                    'Portefeuille',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        fontFamily: 'Poppins'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '50.000F',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Radio(
                                      activeColor: const Color(0xFFF00020),
                                      value: is_selected,
                                      groupValue: 1,
                                      onChanged: (value) {}),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            is_selected = 2;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: is_selected == 2
                                ? const Color(0XFFF0EEEA)
                                : Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/Money.png',
                                    width: 35,
                                    height: 33.6,
                                  ),
                                  const SizedBox(width: 16),
                                  const Text(
                                    'Espèces',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        fontFamily: 'Poppins'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Radio(
                                      activeColor: const Color(0xFFF00020),
                                      focusColor: const Color(0xFFC5BDAE),
                                      value: is_selected,
                                      groupValue: 2,
                                      onChanged: (value) {}),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                hintText: 'Code promo',
                                hintStyle: const TextStyle(
                                  color: Color(0XFFCFCECE),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                                prefixIcon: const Icon(
                                  Icons.verified_outlined,
                                  size: 14,
                                ),
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
                                    horizontal: 8, vertical: 8),
                              )),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton(
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
                                horizontal: 20, vertical: 8),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Appliquer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        // Début de la sélection
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Menus(
                                        cur_index: 0,
                                      ),
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
                                'Abonner',
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
