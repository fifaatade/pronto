import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:pronto/prontoschool/paiement_choice.dart';

class ChooseCar extends StatefulWidget {
  const ChooseCar({super.key});

  @override
  State<ChooseCar> createState() => _ChooseCarState();
}

class _ChooseCarState extends State<ChooseCar> {
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
                        'Choisir une catégorie de voiture',
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
                ...cars
                    .map((car) => GestureDetector(
                          onTap: () {
                            setState(() {
                              cars.forEach((element) {
                                element['isSelected'] = false;
                              });
                              car['isSelected'] = true;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: car['isSelected'] == true
                                  ? const Color(0XFFF0EEEA)
                                  : Colors.white,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "${car['image']}",
                                  width: 60.87,
                                  height: 20,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "${car['title']}",
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0XFF221F1F),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const Icon(
                                                    Icons.access_time_outlined,
                                                    size: 10,
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    "${car['duration']}",
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 10,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${car['price']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ))
                    .toList(),
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
                                    builder: (context) =>
                                        const PaiementChoice(),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}