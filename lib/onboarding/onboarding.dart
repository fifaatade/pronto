import 'package:flutter/material.dart';
import 'package:pronto/auth/register.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentSlideIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  final List<Map<String, dynamic>> _imagesList = [
    {
      'image': 'assets/images/services/Courses.png',
      'title': 'Courses',
      'description': 'Déplacez vous en toute sécurité',
    },
    {
      'image': 'assets/images/services/Livraison.png',
      'title': 'Livraisons',
      'description': 'Faites vous livrer où que vous soyez',
    },
    {
      'image': 'assets/images/services/Pronto school.png',
      'title': 'Pronto School',
      'description': 'Abonnez vous pour le dèplacement scolaire de vos enfants',
    },
    {
      'image': 'assets/images/services/Déménagement.png',
      'title': 'Déménagement',
      'description': 'Déménagez en toute sécurité ',
    },
    {
      'image': 'assets/images/services/Réservation.png',
      'title': 'Réservation',
      'description': 'Réservez le véhicule de votre choix à l’avance',
    },

    ///\n Parce-que nos enfants méritent ce qu\'ils y a de mieux
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentSlideIndex = index;
                  });
                },
                children:
                    renderListCustomTabs(MediaQuery.of(context).size.width),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Début de la sélection
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (_currentSlideIndex ==
                                  _imagesList.length - 1) {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Register()),
                                    (Route<dynamic> route) => false);
                              } else {
                                _currentSlideIndex = _currentSlideIndex + 1;
                                _pageController.animateToPage(
                                  _currentSlideIndex,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              }
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
                                horizontal: 8, vertical: 12),
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
                  if (_currentSlideIndex != _imagesList.length - 1)
                    const SizedBox(
                      height: 10,
                    ),
                  if (_currentSlideIndex != _imagesList.length - 1)
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Register()),
                                  (Route<dynamic> route) => false);
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor:
                                  Colors.white, // couleur de fond du bouton
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 12),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Passer',
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
            )
          ],
        ),
      ),
    );
  }

  List<Widget> renderListCustomTabs(width) {
    return _imagesList.map((slide) {
      return ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25),
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(top: 80, left: 30, right: 30),
            child: Image.asset(
              slide['image'],
              width: width / 1.8,
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildSlideIndicators(),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      slide['title'],
                      style: const TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        slide['description'],
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      );
    }).toList();
  }

  List<Widget> _buildSlideIndicators() {
    return List.generate(
      _imagesList.length,
      (index) => Container(
        width: _currentSlideIndex == index ? 30 : 8.0,
        height: 8.0,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: _currentSlideIndex == index
              ? const Color(0XFFEC1C24)
              : Colors.grey.withOpacity(0.4),
        ),
      ),
    );
  }
}
