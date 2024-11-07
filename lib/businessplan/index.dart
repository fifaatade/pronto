import 'package:flutter/material.dart';
import 'package:pronto/businessplan/register_plan.dart';

class BusinessPlan extends StatefulWidget {
  const BusinessPlan({super.key});

  @override
  State<BusinessPlan> createState() => BusinessPlanState();
}

class BusinessPlanState extends State<BusinessPlan> {
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
            Expanded(
              child: Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Business plan",
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
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
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
                                    setState(() {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => RegisterPlan(),
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
              SizedBox(
                height: 34,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24),
                decoration: BoxDecoration(
                    color: const Color(0XFFE9E6E0),
                    border: Border.all(color: Color(0XFFA1957B), width: 4),
                    borderRadius: BorderRadius.circular(8)),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        top: -10,
                        child: Container(
                          margin: EdgeInsets.only(left: 14),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                              color: Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Color(0XFF5B5240),
                                size: 16,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Recommander',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )),
                    Column(
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
                                      text: '100,000 ', // Texte de base
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
                                    'Forfait Confort',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
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
                                      '30 trajets par mois',
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
                                      'Réservations disponibles 24/7',
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
                                      'Berline standard ou SUV',
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
                                      'Possibilité de réserver des trajets jusqu\'à 24 heures à l\'avance',
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
                                        setState(() {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterPlan(),
                                          ));
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: const Color(
                                            0xFFF00020), // couleur de fond du bouton
                                        // Fin de la sélection
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(26),
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
                  ],
                ),
              ),
              SizedBox(
                height: 34,
              ),
              Container(
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
                                  text: '100,000 ', // Texte de base
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
                                'Forfait Confort',
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
                                  'Illimité',
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
                                  'Berline, SUV, et véhicules de luxe disponibles',
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
                                  'Service disponible dans tout le pays',
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
                                  'Gestionnaire de compte dédié et assistance 24/7',
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
                                  'Offres spéciales',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(
                                  '10% de réduction sur les services de conciergerie associés',
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
                                    setState(() {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => RegisterPlan(),
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
            ],
          ),
        ),
      ),
    );
  }
}
