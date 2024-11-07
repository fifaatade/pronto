import 'package:flutter/material.dart';
import 'package:pronto/businessplan/dashboard/share_contact.dart';

import 'package:qr_flutter/qr_flutter.dart';

class Members extends StatefulWidget {
  const Members({super.key});

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> drivers = [
      {'name': 'DOSSA Claude', 'course': '02'},
      {'name': 'SMITH Jaden', 'course': '03'},
      {'name': 'WANG Lin', 'course': '04'},
      {'name': 'GARCIA Sofia', 'course': '05'},
      {'name': 'KIM Minho', 'course': '06'},
      {'name': 'AHMED Fatima', 'course': '07'},
      {'name': 'MÜLLER Luca', 'course': '08'},
      {'name': 'CHEN Wei', 'course': '09'},
      {'name': 'SATO Yuki', 'course': '10'},
      {'name': 'ALVAREZ Juan', 'course': '11'},
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFECECED),
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Text(
          'Listes des personnelles',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ShareContact(),
              ));
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color(0XFFEC1C24),
                  borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.share_outlined),
            ),
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DataTable(
                      columnSpacing: 10,
                      headingRowColor: MaterialStateColor.resolveWith(
                          (states) => Color(0XFFEC1C24)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0XFFF0EEEA)),
                      columns: [
                        DataColumn(
                            label: Text('#',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white))),
                        DataColumn(
                            label: Text('Nom',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white))),
                        DataColumn(
                            label: Text('Course effectué',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white))),
                        DataColumn(
                            label: Text('Détail',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white))),
                      ],
                      rows: List<DataRow>.generate(
                        drivers.length,
                        (index) => DataRow(
                          cells: [
                            DataCell(Text(
                              (index + 1).toString(),
                              style: TextStyle(fontSize: 12),
                            )),
                            DataCell(
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/avatar.png'), // Replace with actual image
                                    radius: 12,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    drivers[index]['name']!,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  drivers[index]['course']!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            )),
                            DataCell(
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {
                                      // Add your action for details here
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
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
                            'Ajouter une personnelle',
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
          ),
        ),
      ),
    );
  }

  // AlertDialog dial(BuildContext context) {
  //   return AlertDialog(
  //     insetPadding: EdgeInsets.all(10),
  //     contentPadding: const EdgeInsets.all(10),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     content: SingleChildScrollView(
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               Icon(
  //                 Icons.close,
  //                 size: 15,
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 10),
  //           Text(
  //             'Partager avec un employé',
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //                 fontWeight: FontWeight.w600,
  //                 fontSize: 16,
  //                 fontFamily: 'Poppins',
  //                 color: Color(0XFF221F1F)),
  //           ),
  //           SizedBox(height: 10),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               Flexible(
  //                 child: QrImageView(
  //                   data: 'This is a simple QR code',
  //                   version: QrVersions.auto,
  //                   size: 320,
  //                   gapless: false,
  //                 ),
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 6),
  //           Row(
  //             children: [
  //               Expanded(
  //                 child: TextFormField(
  //                     maxLines: 5,
  //                     keyboardType: TextInputType.name,
  //                     decoration: InputDecoration(
  //                       hintText: 'Dites nous la raison',
  //                       hintStyle: const TextStyle(
  //                         fontSize: 12,
  //                         fontFamily: 'Poppins',
  //                         fontWeight: FontWeight.w400,
  //                       ),
  //                       alignLabelWithHint: true,
  //                       border: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(10.0),
  //                         borderSide: const BorderSide(
  //                           color: Colors.transparent,
  //                         ),
  //                       ),
  //                       focusedBorder: OutlineInputBorder(
  //                         borderRadius: BorderRadius.circular(10.0),
  //                         borderSide: const BorderSide(
  //                             color: Color(0xFFF00020), width: 1.5),
  //                       ),
  //                       contentPadding: const EdgeInsets.symmetric(
  //                           horizontal: 16, vertical: 12),
  //                     )),
  //               ),
  //               GestureDetector(
  //                 onTap: () {},
  //                 child: Container(
  //                   padding: EdgeInsets.all(5),
  //                   decoration: BoxDecoration(
  //                       color: Color(0XFFEC1C24),
  //                       borderRadius: BorderRadius.circular(8)),
  //                   child: Icon(Icons.copy),
  //                 ),
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 16),
  //           Row(
  //             children: [
  //               Expanded(
  //                 child: ElevatedButton(
  //                   onPressed: () {
  //                     Navigator.of(context).pop();
  //                   },
  //                   style: ElevatedButton.styleFrom(
  //                     elevation: 0,
  //                     backgroundColor:
  //                         const Color(0xFFF00020), // couleur de fond du bouton
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(26),
  //                     ),
  //                     padding: const EdgeInsets.symmetric(
  //                         horizontal: 8, vertical: 14),
  //                   ),
  //                   child: Container(
  //                     alignment: Alignment.center,
  //                     child: const Text(
  //                       'Continuer',
  //                       style: TextStyle(
  //                         color: Colors.white,
  //                         fontSize: 14,
  //                         fontFamily: 'Poppins',
  //                         fontWeight: FontWeight.w600,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //           const SizedBox(
  //             height: 10,
  //           ),
  //           Row(
  //             children: [
  //               Expanded(
  //                 child: ElevatedButton(
  //                   onPressed: () {
  //                     Navigator.of(context).pop();
  //                   },
  //                   style: ElevatedButton.styleFrom(
  //                     elevation: 0,
  //                     backgroundColor:
  //                         Colors.white, // couleur de fond du bouton
  //                     shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(26),
  //                         side: const BorderSide(
  //                           color: Color(0XFFDBD6CD),
  //                         )),
  //                     padding: const EdgeInsets.symmetric(
  //                         horizontal: 8, vertical: 14),
  //                   ),
  //                   child: Container(
  //                     alignment: Alignment.center,
  //                     child: const Text(
  //                       'Annuler',
  //                       style: TextStyle(
  //                         color: Colors.black,
  //                         fontSize: 14,
  //                         fontFamily: 'Poppins',
  //                         fontWeight: FontWeight.w600,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
