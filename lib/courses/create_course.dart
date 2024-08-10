import 'package:flutter/material.dart';

class CreateCourse extends StatefulWidget {
  const CreateCourse({super.key});

  @override
  State<CreateCourse> createState() => _CreateCourseState();
}

class _CreateCourseState extends State<CreateCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Map Section
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
              child: ClipRRect(
                  child: Image.asset(
                'assets/images/MapsicleMap.png',
                fit: BoxFit.cover,
              )),
            ),
          ),
          // Input and Button Section
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      width: 72,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0XFFCFCECE), width: 3),
                      ),
                      child: Text(''),
                    ),
                  ],
                ),
                Row(
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
                SizedBox(height: 25),
                // Departure TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Départ',
                    hintText: 'St Jean, Womey, Abomey Calavi',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.location_on),
                  ),
                ),
                SizedBox(height: 16),
                // Destination TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Destination',
                    hintText: 'Destination',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.location_on_outlined),
                  ),
                ),
                SizedBox(height: 16),
                // Saved Locations Buttons
                GestureDetector(
                  onTap: () {},
                  child: Container( padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    decoration: BoxDecoration(
                        color: Color(0XFFF8F7F5),
                        borderRadius: BorderRadius.circular(5)),
                    child:Row(
                    children: [
                      Icon(Icons.star_border_rounded),
                      SizedBox(width: 8),
                      Text('Lieux enregistrés'),
                    ],
                  )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container( padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    decoration: BoxDecoration(
                        color: Color(0XFFF8F7F5),
                        borderRadius: BorderRadius.circular(5)),
                    child:Row(
                    children: [
                      Icon(Icons.star_border_rounded),
                      SizedBox(width: 8),
                      Text('Cotonou'),
                    ],
                  )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    decoration: BoxDecoration(
                        color: Color(0XFFF8F7F5),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Icon(Icons.star_border_rounded),
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
    );
  }
}
