import 'package:flutter/material.dart';
import 'package:pronto/auth/register_main_info.dart';

class ConfirmNumber extends StatefulWidget {
  const ConfirmNumber({super.key});

  @override
  State<ConfirmNumber> createState() => _ConfirmNumberState();
}

class _ConfirmNumberState extends State<ConfirmNumber> {
  final List<TextEditingController> _controllers =
      List.generate(5, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(5, (_) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _nextField({required String value, required int currentIndex}) {
    if (value.length == 1 && currentIndex < 4) {
      _focusNodes[currentIndex + 1].requestFocus();
    } else if (value.isEmpty && currentIndex > 0) {
      _focusNodes[currentIndex - 1].requestFocus();
    }
  }

  void _submitOTP() {
    String otp = _controllers.map((controller) => controller.text).join();
    // You can now use the OTP value, e.g., send it to the server
    print("OTP entered: $otp");
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('OTP entered: $otp')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: MediaQuery.of(context).size.height,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(5, (index) {
                    return Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0XFFCFCECE)),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextFormField(
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.black),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: '',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                                color: Color(0xFFF00020), width: 1),
                          ),
                        ),
                        onChanged: (value) =>
                            _nextField(value: value, currentIndex: index),
                      ),
                    );
                  }),
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
