import "package:flutter/material.dart";
import "package:pronto/locations/detail_location.dart";

class LocationIndex extends StatefulWidget {
  const LocationIndex({super.key});

  @override
  State<LocationIndex> createState() => _LocationIndexState();
}

class _LocationIndexState extends State<LocationIndex> {
  List items = [
    {
      'title': 'Toyota',
      'image': "assets/images/toyota.png",
      "route": "Courses"
    },
    {
      'title': 'Jaguar',
      'image': "assets/images/Jaguar.png",
      "route": "Tricycle"
    },
    {
      'title': 'BMW',
      'image': "assets/images/BMW.png",
      "route": "Pronto school"
    },
    {'title': 'KIA', 'image': "assets/images/kia.png", "route": "Livraison"},
    {
      'title': 'Hyundai',
      'image': "assets/images/Hyundai.png",
      "route": "Déménagement"
    },
    {'title': 'Mazda', 'image': "assets/images/Mazda.png", "route": "Location"},
    {
      'title': 'Mercedes',
      'image': "assets/images/Mercedes.png",
      "route": "Reservation"
    },
    {
      'title': 'Renault',
      'image': "assets/images/renaut.png",
      "route": "Plan business"
    },
  ];

  String _selectedValue = 'Avec chauffeur';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD5D4D4), width: 1),
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
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Recherche',
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: Color(0XFFC4C4C4),
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0XFFC4C4C4),
                      size: 20,
                    ),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Image.asset(
                          'assets/images/ListMagnifyingGlass.png',
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide:
                          const BorderSide(color: Color(0XFFCFCECE), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                          color: Color(0xFFF00020), width: 1.5),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  )),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Divider(
                color: Color.fromARGB(183, 240, 238, 234),
              ),
              const SizedBox(
                height: 33,
              ),
              const Row(
                children: [
                  Text('Nos marques',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: [
                    ...items.map((item) => GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFF0EEEA),
                                      borderRadius: BorderRadius.circular(35)),
                                  child: Image.asset(
                                    item['image'],
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                Text(
                                  item['title'],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                children: [
                  Text('Nos véhicules',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ...[1, 2, 3].map((e) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailLocation(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0XFFF0EEEA),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(5))),
                                child: const Text(
                                  'FORTUNER | TOYOTA',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 4),
                                margin: const EdgeInsets.only(top: 8, right: 8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_rate_rounded,
                                      color: Color(0XFFFF7701),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '3.5',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/images/carfront.png')
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '50 000 FCFA /Jours',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0XFFF8F7F5),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            isDense: true,
                                            isExpanded: true,
                                            padding: EdgeInsets.only(left: 10),
                                            value: _selectedValue,
                                            icon: Icon(Icons
                                                .keyboard_arrow_down_rounded),
                                            items: <String>[
                                              'Avec chauffeur', // Assurez-vous que cela correspond exactement
                                              'Sans chauffeur'
                                            ].map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style:
                                                      TextStyle(fontSize: 11),
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
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
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
                                    const Row(
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
                                    const Row(
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
                                          '7 places',
                                          style: TextStyle(
                                              color: Color(0XFF575757),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
