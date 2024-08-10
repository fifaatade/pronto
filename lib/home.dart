import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List items = [
    {'title': 'Courses', 'image': "assets/images/Livraison.png"},
    {'title': 'Tricycle', 'image': "assets/images/Livraison.png"},
    {'title': 'Pronto school', 'image': "assets/images/Livraison.png"},
    {'title': 'Livraison', 'image': "assets/images/Livraison.png"},
    {'title': 'Déménagement', 'image': "assets/images/deplacement.png"},
    {'title': 'Location', 'image': "assets/images/Livraison.png"},
    {'title': 'Réservation', 'image': "assets/images/Livraison.png"},
    {'title': 'Plan business', 'image': "assets/images/Livraison.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/logo_red.png',
          width: 116.06,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.black,
              ))
        ],
        leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/profil.jpg',
                      fit: BoxFit.cover,
                    )))),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Color.fromARGB(183, 240, 238, 234),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: ClipRRect(
                      child: Image.asset('assets/images/banner.png'),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0XFFEC1C24),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/balance_brails.png',
                            ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text(
                                'Mon portefeuille',
                                style: TextStyle(
                                    color: Color(0XFFFAFAFA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins'),
                              )
                            ]),
                            Row(children: [
                              Text(
                                '14,235.34 XOF',
                                style: TextStyle(
                                    color: Color(0XFFFAFAFA),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins'),
                              )
                            ])
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              // Début de la sélection
                              ElevatedButton(
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
                                  backgroundColor: const Color(
                                      0xFFFAFAFA), // couleur de fond du bouton
                                  // Fin de la sélection
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_downward_rounded,
                                        size: 14,
                                        color: Color(0XFF383434),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Recharger',
                                        style: TextStyle(
                                          color: Color(0XFF383434),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Wrap(
                      children: [
                        ...items
                            .map((item) => Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 8),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                139, 240, 238, 234),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                        child: Image.asset(item['image'],
                                            width: 30, height: 30),
                                      ),
                                      Text(
                                        item['title'],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                            .toList()
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
