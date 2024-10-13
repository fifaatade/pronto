import 'package:flutter/material.dart';
import 'package:pronto/prontoschool/main_info.dart';

class BannerProntoShcool extends StatefulWidget {
  const BannerProntoShcool({super.key});

  @override
  State<BannerProntoShcool> createState() => _BannerProntoShcoolState();
}

class _BannerProntoShcoolState extends State<BannerProntoShcool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bannerShool.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.1, 2.8141, 0.1952],
                colors: [
                  Color.fromARGB(244, 0, 0, 0),
                  Color.fromRGBO(44, 43, 43, 0),
                  Color.fromRGBO(44, 43, 43, 1),
                ],
                transform: GradientRotation(360.33 * (3.14 / 180)),
              ),
            ),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 29),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 43,
                              height: 43,
                              margin: const EdgeInsets.only(top: 16),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: const Icon(Icons.arrow_back),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Pronto school",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                          color: Colors.white),
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              height: 9,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              204, 255, 255, 255),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
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
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const MainInfo(),
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
                                          fontSize: 16,
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
                      ]),
                )),
          ),
        ),
      ),
    );
  }
}
