import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pronto/courses/choose_destination.dart';

class CreateCourse extends StatefulWidget {
  const CreateCourse({super.key});

  @override
  State<CreateCourse> createState() => _CreateCourseState();
}

class _CreateCourseState extends State<CreateCourse> {
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
            padding: const EdgeInsets.all(16.0),
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
                      'Définir l’adresse de départ et la destination',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ))
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  height: 1,
                  color: Color(0XFFE4E4E4),
                ),
                const SizedBox(height: 25),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  width: 28,
                                  height: 28,
                                  padding: const EdgeInsets.all(3),
                                  child: const Center(
                                    child: Icon(
                                      Icons.location_on_rounded,
                                      size: 20,
                                      color: Color(0XFFec1c24),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFFCD9DB),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                const SizedBox(height: 16),
                                Image.asset('assets/images/line.png'),
                                const SizedBox(height: 16),
                                Container(
                                  width: 28,
                                  height: 28,
                                  padding: const EdgeInsets.all(3),
                                  child: const Icon(
                                    Icons.location_on_rounded,
                                    size: 20,
                                    color: Color(0XFF0b7b69),
                                  ),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFA4F4E7),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 10,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFF0EEEA),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Départ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                color: Color(0XFF7A7474)),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Flexible(
                                            child: Text(
                                              'St Jean, Womey, Abomey Calavi',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0XFF221F1F)),
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          GestureDetector(
                                              onTap: () {
                                                log("message");
                                              },
                                              child: Image.asset(
                                                'assets/images/PencilSimpleLine.png',
                                                width: 26,
                                                height: 26,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ChooseDestination()));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: const Color(0XFFF0EEEA),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Column(
                                      children: [
                                        // Row(
                                        //   children: [
                                        //     Text(
                                        //       'Départ',
                                        //       style: TextStyle(
                                        //           fontWeight: FontWeight.w600,
                                        //           fontSize: 12,
                                        //           fontFamily: 'Poppins',
                                        //           color: Color(0XFF7A7474)),
                                        //     ),
                                        //   ],
                                        // ),
                                        const SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Flexible(
                                              child: Text(
                                                'Destination',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    color: Color(0XFF221F1F)),
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            GestureDetector(
                                                onTap: () {
                                                  log("message");
                                                },
                                                child: Image.asset(
                                                  'assets/images/PencilSimpleLine.png',
                                                  width: 26,
                                                  height: 26,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Saved Locations Buttons
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 8),
                            decoration: BoxDecoration(
                                color: const Color(0XFFF8F7F5),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Row(
                              children: [
                                Icon(Icons.star_border_rounded),
                                SizedBox(width: 8),
                                Text('Lieux enregistrés'),
                              ],
                            )),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 8),
                            decoration: BoxDecoration(
                                color: const Color(0XFFF8F7F5),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Row(
                              children: [
                                Icon(Icons.label_outline),
                                SizedBox(width: 8),
                                Text('Cotonou'),
                              ],
                            )),
                      ),
                      const SizedBox(height: 8),

                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 8),
                          decoration: BoxDecoration(
                              color: const Color(0XFFF8F7F5),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Row(
                            children: [
                              Icon(Icons.map_outlined),
                              SizedBox(width: 8),
                              Text('Définir le lieu sur la carte'),
                            ],
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
