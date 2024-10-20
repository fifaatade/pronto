import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart'
    as picker;
import 'package:pronto/locations/recap_location.dart';

class DetailLocation extends StatefulWidget {
  const DetailLocation({super.key});

  @override
  State<DetailLocation> createState() => _DetailLocationState();
}

class _DetailLocationState extends State<DetailLocation> {
  // late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(
    //     'https://youtu.be/HnOordeps0Y?si=AJZa4-9JeqzYE7X5')
    //   ..initialize().then((_) {
    //     setState(() {});
    //   });
  }

  int is_selected = 1;
  String _selectedValue =
      'Avec chauffeur'; // Assurez-vous que cela correspond exactement
  int dayCount = 02;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // VideoPlayer(_controller),
            // VideoProgressIndicator(
            //   _controller,
            //   allowScrubbing: true, // Ajout du paramètre requis
            // ),

            Stack(children: [
              Image.asset('assets/images/video.png'),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(99, 255, 255, 255),
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
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(99, 255, 255, 255),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.share,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
            Container(
                decoration: const BoxDecoration(
                  color: Color(0XFFFFFF),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: const Color(0XFFF0EEEA),
                                border: Border.all(
                                    width: 2, color: const Color(0XFFF0EEEA)),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset(
                              'assets/images/carfront.png',
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: const Color(0XFFF0EEEA),
                                border: Border.all(
                                    width: 2, color: const Color(0XFFF0EEEA)),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset(
                              'assets/images/carfront.png',
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: const Color(0XFFF0EEEA),
                                border: Border.all(
                                    width: 2, color: const Color(0XFFF0EEEA)),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset(
                              'assets/images/carfront.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 17.5),
                        decoration: BoxDecoration(
                            color: const Color(0XFFEC1C24),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            const Text(
                              '50 000 FCFA /Jours',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isDense: true,
                                    isExpanded: true,
                                    padding: const EdgeInsets.only(left: 10),
                                    value: _selectedValue,
                                    icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded),
                                    items: <String>[
                                      'Avec chauffeur', // Assurez-vous que cela correspond exactement
                                      'Sans chauffeur'
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedValue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: const Color(0XFFF0EEEA),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/transmission.png'),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          'Manuel',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.local_gas_station_rounded,
                                          size: 16,
                                          color: Color(0XFFEC1C24),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Essence',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/roue.png'),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '4WD',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.accessible,
                                          size: 16,
                                          color: Color(0XFFEC1C24),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '7 Places',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/vitesse.png'),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          'Manuel',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.ac_unit_rounded,
                                          size: 16,
                                          color: Color(0XFFEC1C24),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Climatisation',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: const Color(0XFFF0EEEA),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      children: [
                                        Text(
                                          'Détails',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      children: [
                                        Text(
                                          'Couleur',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Gris',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      children: [
                                        Text(
                                          'Immatriculation',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'CD 7890 RB',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      children: [
                                        Text(
                                          'Prix de l’assurance',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '50 000 FCFA',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 41,
                      ),
                      Row(
                        children: [
                          // Début de la sélection
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20)),
                                  ),
                                  builder: (BuildContext context) {
                                    return period(context);
                                  },
                                );
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
                                  'Réserver maintenant',
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
                      )
                    ]),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  SingleChildScrollView period(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
                      border:
                          Border.all(color: const Color(0XFFCFCECE), width: 3),
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
                  'Choisir votre période',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Poppins'),
                ))
              ],
            ),
            const SizedBox(height: 8),
            const Divider(
              height: 1,
              color: Color(0XFFE4E4E4),
            ),
            const SizedBox(height: 25),
            const Row(
              children: [
                Text(
                  'Nombre de jour',
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
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFFCFCECE), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (dayCount <= 0) {
                            return;
                          } else {
                            dayCount--;
                          }
                        });
                      },
                      child: Icon(Icons.remove)),
                  Text.rich(
                    TextSpan(
                      text: '$dayCount ', // Texte de base
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'jours', // Texte stylisé
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0XFFCFCECE)),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          dayCount++;
                        });
                      },
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  'Date du début',
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
                onTap: () async {
                  await showDatePickerDialog(
                      width: 300,
                      height: 300,
                      leadingDateTextStyle: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFF00020),
                          fontWeight: FontWeight.w600),
                      selectedCellTextStyle:
                          const TextStyle(fontSize: 15, color: Colors.white),
                      currentDateTextStyle: const TextStyle(
                          fontSize: 15, color: Color(0xFFF00020)),
                      currentDateDecoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFF00020),
                        ),
                        shape: BoxShape.circle,
                      ),
                      enabledCellsTextStyle: const TextStyle(
                        fontSize: 15,
                      ),
                      selectedCellDecoration: const BoxDecoration(
                        color: Color(0xFFF00020),
                        shape: BoxShape.circle,
                      ),
                      context: context,
                      initialDate: DateTime.now(),
                      minDate: DateTime(2020, 1, 1),
                      maxDate: DateTime(2330, 1, 1),
                      highlightColor: const Color(0xFFF00020));
                },
                keyboardType: TextInputType.datetime,
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'dd/mm/yyyy',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: const Icon(Icons.date_range_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide:
                        const BorderSide(color: Color(0XFFCFCECE), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide:
                        const BorderSide(color: Color(0xFFF00020), width: 1.5),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                )),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  'L’heure',
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
                onTap: () {
                  picker.DatePicker.showTimePicker(context,
                      locale: picker.LocaleType.fr,
                      theme: const picker.DatePickerTheme(
                          backgroundColor: Colors.white,
                          headerColor: Color(0xFFF00020),
                          itemStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          doneStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          cancelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                      showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
                },
                keyboardType: TextInputType.datetime,
                readOnly: true,
                decoration: InputDecoration(
                  hintText: '00:00',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: const Icon(Icons.access_time_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide:
                        const BorderSide(color: Color(0XFFCFCECE), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide:
                        const BorderSide(color: Color(0xFFF00020), width: 1.5),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                )),
            const SizedBox(height: 16),
            Row(
              children: [
                // Début de la sélection
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        builder: (BuildContext context) {
                          return paiement(context);
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor:
                          const Color(0xFFF00020), // couleur de fond du bouton
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
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView paiement(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                width: 72,
                height: 6,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0XFFCFCECE), width: 3),
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
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: is_selected == 3
                        ? const Color(0XFFF0EEEA)
                        : Color(0XFFFAFAFA),
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
                            color: const Color(0XFFF0EEEA),
                          ),
                          const SizedBox(width: 16),
                          const Text(
                            'Portefeuille entreprise',
                            style: TextStyle(
                                color: Color.fromARGB(255, 223, 217, 206),
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
                              value: is_selected,
                              groupValue: 3,
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
                    backgroundColor:
                        const Color(0xFFF00020), // couleur de fond du bouton
                    // Fin de la sélection
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RecapLocation(),
                        ));
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor:
                          const Color(0xFFF00020), // couleur de fond du bouton
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
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
}
