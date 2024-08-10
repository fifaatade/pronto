import 'package:flutter/material.dart';
import 'package:pronto/auth/register_main_info.dart';

class ConfirmNumber extends StatefulWidget {
  const ConfirmNumber({super.key});

  @override
  State<ConfirmNumber> createState() => _ConfirmNumberState();
}

class _ConfirmNumberState extends State<ConfirmNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Confirmer votre identité',
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'Un code est envoyé au +229 6* ** *0 12.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF383434),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Renvoyer le code',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFFEC1C24),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                                      const RegisterMainInfo(),
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
                              horizontal: 8, vertical: 12),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            'Confirmer',
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
}
