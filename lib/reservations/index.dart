import 'package:flutter/material.dart';

class IndexReservation extends StatefulWidget {
  const IndexReservation({super.key});

  @override
  State<IndexReservation> createState() => _IndexReservationState();
}

class _IndexReservationState extends State<IndexReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
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
      ),
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
