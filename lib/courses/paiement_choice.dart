import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pronto/courses/create_course.dart';

class PaiementChoice extends StatefulWidget {
  const PaiementChoice({super.key});

  @override
  State<PaiementChoice> createState() => _PaiementChoiceState();
}

class _PaiementChoiceState extends State<PaiementChoice> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  bool is_selected = true;
  static LatLng _positionRed = const LatLng(37.4223, -122);
  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  List cars = [
    {
      'title': 'Classic',
      'image': "assets/images/classic_car.png",
      "duration": "5min",
      "price": "1000 F - 2000 F",
      'isSelected': true
    },
    {
      'title': 'Confort',
      'image': "assets/images/confort_car.png",
      "duration": "5min",
      "price": "1000 F - 2000 F",
      'isSelected': false
    },
    {
      'title': 'Pronto One',
      'image': "assets/images/pronto_car.png",
      "duration": "5min",
      "price": "1000 F - 2000 F",
      'isSelected': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Map Section
          Expanded(
            child: GoogleMap(
              initialCameraPosition: _kGooglePlex,
              markers: {
                Marker(
                  markerId: const MarkerId("1"),
                  icon: AssetMapBitmap('assets/images/pin_red.png'),
                  position: _positionRed,
                )
              },
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          // Input and Button Section
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                    Container(
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
                              Text(
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
                              Text(
                                '50.000F',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              ),
                              Radio(
                                  activeColor: Color(0xFFF00020),
                                  value: 1,
                                  groupValue: 1,
                                  onChanged: (value) {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
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
                              Text(
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
                              Text(
                                '',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              ),
                              Radio(
                                  activeColor: Color(0xFFF00020),
                                  focusColor: Color(0xFFC5BDAE),
                                  value: is_selected,
                                  groupValue: 2,
                                  onChanged: (value) {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: is_selected == 3
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
                                color: Color(0xFFC5BDAE),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                'Portefeuille entreprise',
                                style: TextStyle(
                                    color: Color(0xFFC5BDAE),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    fontFamily: 'Poppins'),
                              ),
                              Radio(
                                  activeColor: Color(0xFFF00020),
                                  value: is_selected,
                                  groupValue: 3,
                                  onChanged: (value) {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                                    builder: (context) => const CreateCourse(),
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
                              'Confirmer l’adresse',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
